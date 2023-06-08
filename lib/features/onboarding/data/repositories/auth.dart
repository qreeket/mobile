import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/network/network.info.dart';
import 'package:mobile/features/onboarding/data/local/auth.dart';
import 'package:mobile/features/onboarding/data/remote/auth.dart';
import 'package:mobile/features/onboarding/domain/repositories/auth.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';

/// This is the implementation of the [BaseAuthRepository] interface.
@Injectable(as: BaseAuthRepository)
final class AuthRepository implements BaseAuthRepository {
  AuthRepository(
      this._networkInfo, this._remoteDataSource, this._localDataSource);

  final NetworkInfo _networkInfo;
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;

  @override
  Future<Either<Empty, Either<AuthenticateWithSocialAccountRequest, String>>>
      authenticateWithApple() async =>
          await _remoteDataSource.authenticateWithApple();

  @override
  Future<Either<Empty, Either<AuthenticateWithSocialAccountRequest, String>>>
      authenticateWithFacebook() async =>
          await _remoteDataSource.authenticateWithFacebook();

  @override
  Future<Either<Empty, Either<AuthenticateWithSocialAccountRequest, String>>>
      authenticateWithGoogle() async =>
          await _remoteDataSource.authenticateWithGoogle();

  @override
  Future<Either<Empty, String>> createUser({
    required String username,
    required String phone,
    required String email,
    required String password,
    required String country,
    required String college,
    required String avatar,
  }) async =>
      await _remoteDataSource.createUser(
          username: username,
          phone: phone,
          email: email,
          password: password,
          country: country,
          college: college,
          avatar: avatar);

  @override
  Future<Either<String, String>> requestPasswordReset(
          String emailOrPhoneNumber) async =>
      await _remoteDataSource.requestPasswordReset(emailOrPhoneNumber);

  @override
  Future<Either<String, String>> resetPassword(
          {required String emailOrPhoneNumber,
          required String password,
          required String token}) async =>
      await _remoteDataSource.resetPassword(
          emailOrPhoneNumber: emailOrPhoneNumber,
          password: password,
          token: token);

  @override
  Future<void> signOut() async {
    await _remoteDataSource.signOut();
    await _localDataSource.clear();
  }

  @override
  Future<Either<Empty, String>> verifyOTPForPhoneNumber(
          {required String phoneNumber, required String otp}) async =>
      await _remoteDataSource.verifyOTPForPhoneNumber(
          phoneNumber: phoneNumber, otp: otp);

  @override
  Future<Either<Empty, String>> verifyPhoneNumber(String phoneNumber) async =>
      await _remoteDataSource.verifyPhoneNumber(phoneNumber);

  @override
  Future<Either<Account, String>> currentUser() async {
    if (await _networkInfo.isConnected) {
      var either = await _remoteDataSource.currentUser();
      var account = either.fold((l) => l, (r) => null);
      if (account != null) await _localDataSource.addAccount(account);
    }
    return await _localDataSource.currentUser();
  }

  @override
  Future<Either<List<College>, String>> getColleges(String countryId) async {
    if (await _networkInfo.isConnected) {
      var either = await _remoteDataSource.getColleges(countryId);
      var colleges = either.fold((l) => l, (r) => null);
      if (colleges != null) await _localDataSource.addColleges(colleges);
    }
    return await _localDataSource.getColleges(countryId);
  }

  @override
  Future<Either<List<Country>, String>> getCountries() async {
    if (await _networkInfo.isConnected) {
      var either = await _remoteDataSource.getCountries();
      var countries = either.fold((l) => l, (r) => null);
      if (countries != null) await _localDataSource.addCountries(countries);
    }
    return await _localDataSource.getCountries();
  }

  @override
  Future<Either<Empty, String>> authenticate(
          AuthenticateWithSocialAccountRequest request) async =>
      await _remoteDataSource.authenticate(request);

  @override
  Future<Either<Empty, String>> signInWithPhoneNumberAndPassword({
    required String countryId,
    required String phoneNumber,
    required String password,
  }) async =>
      await _remoteDataSource.signInWithPhoneNumberAndPassword(
          countryId: countryId, phoneNumber: phoneNumber, password: password);

  @override
  Future<Either<Empty, String>> signInWithEmailAndPassword({
    required String countryId,
    required String email,
    required String password,
  }) async =>
      await _remoteDataSource.signInWithEmailAndPassword(
          countryId: countryId, email: email, password: password);

  @override
  Future<Either<College, String>> getCollege(String id) async {
    if (await _networkInfo.isConnected) {
      var either = await _remoteDataSource.getCollege(id);
      var college = either.fold((l) => l, (r) => null);
      if (college != null) await _localDataSource.addCollege(college);
    }
    return await _localDataSource.getCollege(id);
  }

  @override
  Future<Either<Empty, String>> deleteAccount() async =>
      await _remoteDataSource.deleteAccount();

  @override
  Future<Either<Empty, String>> checkEmail(String email) async =>
      await _remoteDataSource.checkEmail(email);

  @override
  Future<Either<Empty, String>> checkPhoneNumber(String phoneNumber) async =>
      await _remoteDataSource.checkPhoneNumber(phoneNumber);

  @override
  Future<Either<Account, String>> updateAccount(Account request) async {
    if (await _networkInfo.isConnected) {
      var either = await _remoteDataSource.updateAccount(request);
      var account = either.fold((l) => l, (r) => null);
      if (account != null) await _localDataSource.addAccount(account);
    }
    return await _localDataSource.getAccountById(request.id);
  }
}
