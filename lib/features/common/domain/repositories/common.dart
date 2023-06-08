import 'package:dartz/dartz.dart';

abstract class BaseCommonRepository {
  Future<Either<List, String>> getCountries();

  Future<Either<List, String>> getColleges();
}
