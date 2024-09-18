import 'package:dartz/dartz.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:mobile/generated/protos/common.pb.dart';

abstract interface class BaseAuthRepository {
  Future<Either<Empty, Either<String, AuthenticateWithSocialAccountRequest>>>
      authenticateWithApple();

  Future<Either<Empty, Either<String, AuthenticateWithSocialAccountRequest>>>
      authenticateWithGoogle();

  Future<Either<Empty, Either<String, AuthenticateWithSocialAccountRequest>>>
      authenticateWithFacebook();

  Future<Either<Empty, String>> authenticate(
      AuthenticateWithSocialAccountRequest request);

  Future<void> signOut();

  Future<Either<Empty, String>> signInWithEmailAndPassword({
    required String countryId,
    required String email,
    required String password,
  });

  Future<Either<Empty, String>> signInWithPhoneNumberAndPassword({
    required String countryId,
    required String phoneNumber,
    required String password,
  });

  Future<Either<Empty, String>> verifyPhoneNumber(String phoneNumber);

  Future<Either<Empty, String>> verifyOTPForPhoneNumber({
    required String phoneNumber,
    required String otp,
  });

  Future<Either<Empty, String>> createUser({
    required String username,
    required String phone,
    required String email,
    required String password,
    required String country,
    required String college,
    required String avatar,
  });

  Future<Either<String, String>> requestPasswordReset(
      String emailOrPhoneNumber);

  Future<Either<String, String>> resetPassword({
    required String emailOrPhoneNumber,
    required String password,
    required String token,
  });

  Future<Either<Account, String>> currentUser();

  Future<Either<List<Country>, String>> getCountries();

  Future<Either<List<College>, String>> getColleges(String countryId);

  Future<Either<College, String>> getCollege(String id);

  Future<Either<Empty, String>> deleteAccount();

  Future<Either<Empty, String>> checkEmail(String email);

  Future<Either<Empty, String>> checkPhoneNumber(String phoneNumber);

  Future<Either<Account, String>> updateAccount(Account account);
}
