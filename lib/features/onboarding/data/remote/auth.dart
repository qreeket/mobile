import 'package:dartz/dartz.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/network/error.handler.dart';
import 'package:mobile/core/utils/image.utils.dart';
import 'package:mobile/core/utils/validator.dart';
import 'package:mobile/features/common/domain/repositories/security.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:mobile/generated/protos/auth_service.pbgrpc.dart';
import 'package:mobile/generated/protos/sms.pb.dart';
import 'package:mobile/generated/protos/sms_service.pbgrpc.dart';
import 'package:mobile/generated/protos/common.pb.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

// error message
final _kAuthFailedMessage = 'An error occurred. Please try again later';

/// Remote data source for authentication
@injectable
class AuthRemoteDataSource {
  final FacebookAuth _facebookAuth;
  final GoogleSignIn _googleSignIn;
  final BaseSecurityRepository _securityRepository;
  final AuthServiceClient _authClient;
  final SmsServiceClient _smsClient;

  AuthRemoteDataSource(this._securityRepository, this._authClient,
      this._facebookAuth, this._googleSignIn, this._smsClient) {
    _checkTokenAvailability();
  }

  Future<Either<Empty, Either<AuthenticateWithSocialAccountRequest, String>>>
      authenticateWithApple() async {
    var request = AuthenticateWithSocialAccountRequest();
    return runWithGrpcUnaryZonedGuarded(
      () async {
        // TODO: configure authenticateWithApple
        final credential = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
          webAuthenticationOptions: WebAuthenticationOptions(
            clientId: 'io.qcodelabsllc.qreeket.ios.sid',
            redirectUri:
                Uri.parse('https://qreeket.firebaseapp.com/__/auth/handler'),
          ),
        );

        request = AuthenticateWithSocialAccountRequest(
            email: credential.email,
            username: '${credential.givenName} ${credential.familyName}');
        var accessToken = await _authClient.authenticate_account(request);
        await _securityRepository.storeAccessToken(accessToken.value);
        await currentUser();
        return Empty();
      },
      onError: (err) {
        if (err.code == StatusCode.notFound) {
          return right(left(request));
        }

        return right(right(err.message ?? _kAuthFailedMessage));
      },
    );
  }

  Future<Either<Empty, Either<AuthenticateWithSocialAccountRequest, String>>>
      authenticateWithFacebook() async {
    var request = AuthenticateWithSocialAccountRequest();
    return runWithGrpcUnaryZonedGuarded(
      () async {
        var result =
            await _facebookAuth.login(permissions: ['email', 'public_profile']);
        if (result.status == LoginStatus.success) {
          var user = await _facebookAuth.getUserData();
          var email = user['email'];
          var name = user['name'];
          var avatar = user['picture']['data']['url'];
          request = AuthenticateWithSocialAccountRequest(
              avatarUrl: avatar, email: email, username: name);
          var accessToken = await _authClient.authenticate_account(request);
          await _securityRepository.storeAccessToken(accessToken.value);
          await currentUser();
          return Empty();
        }

        throw GrpcError.cancelled(result.message);
      },
      onError: (err) {
        if (err.code == StatusCode.notFound) {
          return right(left(request));
        }

        return right(right(err.message ?? _kAuthFailedMessage));
      },
    );
  }

  Future<Either<Empty, Either<AuthenticateWithSocialAccountRequest, String>>>
      authenticateWithGoogle() async {
    var request = AuthenticateWithSocialAccountRequest();
    return runWithGrpcUnaryZonedGuarded(
      () async {
        final googleUser = await _googleSignIn.signIn();
        if (googleUser == null) throw GrpcError.cancelled(_kAuthFailedMessage);
        final user = googleUser;
        var email = user.email;
        var name = user.displayName;
        var avatar = user.photoUrl;
        request = AuthenticateWithSocialAccountRequest(
            avatarUrl: avatar, email: email, username: name);
        var accessToken = await _authClient.authenticate_account(request);
        await _securityRepository.storeAccessToken(accessToken.value);
        await currentUser();
        return Empty();
      },
      onError: (err) {
        if (err.code == StatusCode.notFound) {
          return right(left(request));
        }

        return right(right(err.message ?? _kAuthFailedMessage));
      },
    );
  }

  Future<Either<Empty, String>> createUser({
    required String username,
    required String phone,
    required String email,
    required String password,
    required String country,
    required String college,
    required String avatar,
  }) async =>
      runWithGrpcUnaryZonedGuarded(() async {
        var request = RegisterRequest(
          username: username,
          phoneNumber: phone,
          email: email,
          password: password,
          countryId: country,
          collegeId: college,
        );

        if (!avatar.startsWith('http')) {
          var avatarBytes = await assetToBytes(avatar);
          request.avatarData = avatarBytes;
        } else {
          request.avatarUrl = avatar;
        }

        var accessToken = await _authClient.register(request);
        await _securityRepository.storeAccessToken(accessToken.value);
        await currentUser();
        return Empty();
      });

  Future<Either<String, String>> requestPasswordReset(
          String emailOrPhoneNumber) async =>
      runWithGrpcUnaryZonedGuarded(() async {
        var response = await _authClient
            .request_password_reset(RequestPasswordResetRequest(
          email: Validators.validateEmail(emailOrPhoneNumber) == null
              ? emailOrPhoneNumber
              : null,
          phoneNumber: Validators.validatePhone(emailOrPhoneNumber) == null
              ? emailOrPhoneNumber
              : null,
        ));
        return response.value;
      });

  Future<Either<String, String>> resetPassword(
          {required String emailOrPhoneNumber,
          required String password,
          required String token}) async =>
      runWithGrpcUnaryZonedGuarded(() async {
        var request = ResetPasswordRequest(
          email: Validators.validateEmail(emailOrPhoneNumber) == null
              ? emailOrPhoneNumber
              : null,
          phoneNumber: Validators.validatePhone(emailOrPhoneNumber) == null
              ? emailOrPhoneNumber
              : null,
          password: password,
          resetToken: token,
        );
        var response = await _authClient.reset_password(request);
        return response.value;
      });

  Future<void> signOut() async => runWithGrpcUnaryZonedGuarded(() async {
        await _facebookAuth.logOut();
        await _googleSignIn.signOut();
        await _authClient.logout(Empty());
        await _securityRepository.deleteAccessTokenAndUserId();

        runWithGrpcUnaryZonedGuarded(() async {
          var response = await _authClient.request_public_access_token(Empty());
          await _securityRepository.storeAccessToken(response.value);
        });
      });

  Future<Either<Empty, String>> verifyOTPForPhoneNumber(
          {required String phoneNumber, required String otp}) async =>
      runWithGrpcUnaryZonedGuarded(() async {
        var request =
            VerifyPhoneRequest(phoneNumber: phoneNumber, verificationCode: otp);
        return await _smsClient.verify_phone_verification_code(request);
      });

  Future<Either<Empty, String>> verifyPhoneNumber(String phoneNumber) async =>
      runWithGrpcUnaryZonedGuarded(() async => await _smsClient
          .send_phone_verification_code(StringValue(value: phoneNumber)));

  Future<Either<Account, String>> currentUser() async =>
      runWithGrpcUnaryZonedGuarded(() async {
        var account = await _authClient.get_account(Empty());
        await _securityRepository.storeUserId(account.id);
        return account;
      });

  Future<Either<List<College>, String>> getColleges(String countryId) async =>
      runWithGrpcUnaryZonedGuarded(() async => (await _authClient
              .get_colleges_for_country(StringValue(value: countryId)))
          .colleges);

  Future<Either<List<Country>, String>> getCountries() async =>
      runWithGrpcUnaryZonedGuarded(
          () async => (await _authClient.get_countries(Empty())).countries);

  Future<Either<Empty, String>> authenticate(
          AuthenticateWithSocialAccountRequest request) async =>
      runWithGrpcUnaryZonedGuarded(() async {
        if (!request.avatarUrl.startsWith('http')) {
          request.avatarData = await assetToBytes(request.avatarUrl);
        }

        var response = await _authClient.authenticate_account(request);
        await _securityRepository.storeAccessToken(response.value);
        await currentUser();
        return Empty();
      });

  Future<Either<Empty, String>> signInWithPhoneNumberAndPassword({
    required String countryId,
    required String phoneNumber,
    required String password,
  }) async =>
      runWithGrpcUnaryZonedGuarded(() async {
        var request = LoginRequest(
            countryId: countryId, phoneNumber: phoneNumber, password: password);
        var accessToken = await _authClient.login(request);
        await _securityRepository.storeAccessToken(accessToken.value);
        await currentUser();
        return Empty();
      });

  Future<Either<Empty, String>> signInWithEmailAndPassword({
    required String countryId,
    required String email,
    required String password,
  }) async =>
      runWithGrpcUnaryZonedGuarded(() async {
        var request = LoginRequest(
            countryId: countryId, email: email, password: password);
        var accessToken = await _authClient.login(request);
        await _securityRepository.storeAccessToken(accessToken.value);
        await currentUser();
        return Empty();
      });

  Future<Either<College, String>> getCollege(String id) async =>
      runWithGrpcUnaryZonedGuarded(() async =>
          await _authClient.get_college_by_id(StringValue(value: id)));

  Future<Either<Empty, String>> deleteAccount() async =>
      runWithGrpcUnaryZonedGuarded(() async {
        var request = Empty();
        await _authClient.delete_account(request);
        await _googleSignIn.signOut();
        await _facebookAuth.logOut();
        await _securityRepository.deleteAccessTokenAndUserId();
        var response = await _authClient.request_public_access_token(request);
        await _securityRepository.storeAccessToken(response.value);
        return request;
      });

  Future<Either<Empty, String>> checkEmail(String email) async =>
      runWithGrpcUnaryZonedGuarded(
          () async => await _authClient.check_email(StringValue(value: email)));

  Future<Either<Empty, String>> checkPhoneNumber(String phoneNumber) async =>
      runWithGrpcUnaryZonedGuarded(() async => await _authClient
          .check_phone_number(StringValue(value: phoneNumber)));

  Future<Either<Account, String>> updateAccount(Account request) async =>
      runWithGrpcUnaryZonedGuarded(
          () async => await _authClient.update_account(request));

  /// Checks if the token is available in the local storage, if not
  /// then it will try to get the token from the server.
  void _checkTokenAvailability() async {
    var loggedIn = await _securityRepository.isLoggedIn;
    if (loggedIn) return;
    var either = await runWithGrpcUnaryZonedGuarded(
        () => _authClient.request_public_access_token(Empty()));
    var response = either.fold((l) => l, (r) => null);
    if (response == null) return;
    await _securityRepository.storeAccessToken(response.value);
  }
}
