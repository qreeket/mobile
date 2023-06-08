import 'package:dartz/dartz.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/common/domain/repositories/security.dart';
import 'package:mobile/generated/protos/auth.pb.dart';

/// Local data source for authentication
@injectable
class AuthLocalDataSource {
  final Box<Account> _accountsBox;
  final Box<Country> _countriesBox;
  final Box<College> _collegesBox;
  final BaseSecurityRepository _securityRepo;

  AuthLocalDataSource(this._accountsBox, this._countriesBox, this._collegesBox,
      this._securityRepo);

  // region account
  Future<void> addAccount(Account account) async =>
      await _accountsBox.put(account.id, account);

  Future<void> addAccounts(List<Account> accounts) async =>
      await _accountsBox.putAll({for (var e in accounts) e.id: e});

  Future<void> deleteAccount(String id) async => await _accountsBox.delete(id);

  Future<Either<Account, String>> getAccountById(String id) async {
    try {
      final account = _accountsBox.get(id);
      if (account == null) {
        return right('Oops...an error occurred while fetching account details');
      }
      return left(account);
    } catch (e) {
      return right(e.toString());
    }
  }

  Future<Either<Account, String>> currentUser() async {
    try {
      var uid = await _securityRepo.getUserId();
      final account = _accountsBox.get(uid);
      if (account == null) {
        return right('Oops...an error occurred while fetching account details');
      }
      return left(account);
    } catch (e) {
      return right(e.toString());
    }
  }

  // endregion

  // region country
  Future<Either<Country, String>> getCountryById(String id) async {
    try {
      final country = _countriesBox.get(id);
      if (country == null) {
        return right('Oops...an error occurred while fetching country details');
      }
      return left(country);
    } catch (e) {
      return right(e.toString());
    }
  }

  Future<Either<List<Country>, String>> getCountries() async {
    try {
      final countries = _countriesBox.values.toList();
      if (countries.isEmpty) {
        return right('Oops...an error occurred while fetching countries');
      }
      return left(countries);
    } catch (e) {
      return right(e.toString());
    }
  }

  Future<void> addCountry(Country country) async =>
      await _countriesBox.put(country.id, country);

  Future<void> addCountries(List<Country> countries) async =>
      await _countriesBox.putAll({for (var e in countries) e.id: e});

  Future<void> deleteCountry(String id) async => await _countriesBox.delete(id);

  // endregion

  // region college
  Future<Either<College, String>> getCollege(String id) async {
    try {
      final college = _collegesBox.get(id);
      if (college == null) {
        return right('Oops...an error occurred while fetching college details');
      }
      return left(college);
    } catch (e) {
      return right(e.toString());
    }
  }

  Future<Either<List<College>, String>> getColleges(String country) async {
    try {
      final colleges = _collegesBox.values
          .where((element) => element.countryId == country)
          .toList();
      if (colleges.isEmpty) {
        return right('Oops...an error occurred while fetching colleges');
      }
      return left(colleges);
    } catch (e) {
      return right(e.toString());
    }
  }

  Future<void> addCollege(College college) async =>
      await _collegesBox.put(college.id, college);

  Future<void> addColleges(List<College> colleges) async =>
      await _collegesBox.putAll({for (var e in colleges) e.id: e});

// endregion

  Future<void> clear() async => await _accountsBox.clear();
}
