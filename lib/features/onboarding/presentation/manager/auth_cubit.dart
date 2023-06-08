import 'package:bloc/bloc.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/features/common/domain/repositories/security.dart';
import 'package:mobile/features/onboarding/domain/repositories/auth.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:shared_utils/shared_utils.dart';

class AuthCubit extends Cubit<BlocState> {
  final _securityRepo = getIt<BaseSecurityRepository>(),
      _authRepo = getIt<BaseAuthRepository>();

  AuthCubit() : super(BlocState.initialState());

  Future<bool> get isLoggedIn async => await _securityRepo.isLoggedIn;

  Future<void> deleteAccount() async {
    emit(BlocState.loadingState());
    var either = await _authRepo.deleteAccount();
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> signOut() async {
    emit(BlocState.loadingState());
    await _authRepo.signOut();
    emit(BlocState<Empty>.successState(data: Empty()));
  }

  Future<void> verifyOTPForPhoneNumber({
    required String phoneNumber,
    required String otp,
  }) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.verifyOTPForPhoneNumber(
      phoneNumber: phoneNumber,
      otp: otp,
    );
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> requestPasswordReset(String emailOrPhoneNumber) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.requestPasswordReset(emailOrPhoneNumber);
    either.fold(
      (l) => emit(BlocState<String>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> verifyPhoneNumber(String phoneNumber) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.verifyPhoneNumber(phoneNumber);
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> resetPassword({
    required String emailOrPhoneNumber,
    required String password,
    required String token,
  }) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.resetPassword(
      emailOrPhoneNumber: emailOrPhoneNumber,
      password: password,
      token: token,
    );
    either.fold(
      (l) => emit(BlocState<String>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> signInWithEmailAndPassword({
    required String countryId,
    required String email,
    required String password,
  }) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.signInWithEmailAndPassword(
        countryId: countryId, email: email, password: password);
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> signInWithPhoneNumberAndPassword({
    required String countryId,
    required String phoneNumber,
    required String password,
  }) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.signInWithPhoneNumberAndPassword(
        countryId: countryId, phoneNumber: phoneNumber, password: password);
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> authenticateWithApple() async {
    emit(BlocState.loadingState());
    var either = await _authRepo.authenticateWithApple();
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => r.fold(
        (l) => emit(
            BlocState<AuthenticateWithSocialAccountRequest>.successState(
                data: l)),
        (r) => emit(BlocState<String>.errorState(failure: r)),
      ),
    );
  }

  Future<void> authenticateWithFacebook() async {
    emit(BlocState.loadingState());
    var either = await _authRepo.authenticateWithFacebook();
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => r.fold(
        (l) => emit(
            BlocState<AuthenticateWithSocialAccountRequest>.successState(
                data: l)),
        (r) => emit(BlocState<String>.errorState(failure: r)),
      ),
    );
  }

  Future<void> authenticateWithGoogle() async {
    emit(BlocState.loadingState());
    var either = await _authRepo.authenticateWithGoogle();
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => r.fold(
        (l) => emit(
            BlocState<AuthenticateWithSocialAccountRequest>.successState(
                data: l)),
        (r) => emit(BlocState<String>.errorState(failure: r)),
      ),
    );
  }

  Future<void> checkEmail(String email) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.checkEmail(email);
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> checkPhoneNumber(String phoneNumber) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.checkPhoneNumber(phoneNumber);
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> createUser({
    required String username,
    required String phone,
    required String email,
    required String password,
    required String country,
    required String college,
    required String avatar,
  }) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.createUser(
        username: username,
        phone: phone,
        email: email,
        password: password,
        country: country,
        college: college,
        avatar: avatar);
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> currentUser() async {
    emit(BlocState.loadingState());
    var either = await _authRepo.currentUser();
    either.fold(
      (l) => emit(BlocState<Account>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> getCountries() async {
    emit(BlocState.loadingState());
    var either = await _authRepo.getCountries();
    either.fold(
      (l) => emit(BlocState<List<Country>>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> getColleges(String countryId) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.getColleges(countryId);
    either.fold(
      (l) => emit(BlocState<List<College>>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> authenticate(
      AuthenticateWithSocialAccountRequest request) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.authenticate(request);
    either.fold(
      (l) => emit(BlocState<Empty>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> getCollege(String id) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.getCollege(id);
    either.fold(
      (l) => emit(BlocState<College>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> updateAccount(Account account) async {
    emit(BlocState.loadingState());
    var either = await _authRepo.updateAccount(account);
    either.fold(
      (l) => emit(BlocState<Account>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }
}
