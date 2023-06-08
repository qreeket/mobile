import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/common/domain/repositories/common.dart';

/// This is the implementation of the [BaseCommonRepository] interface.
@Injectable(as: BaseCommonRepository)
class CommonRepository implements BaseCommonRepository {
  @override
  Future<Either<List, String>> getColleges() async {
    // TODO: implement getColleges
    throw UnimplementedError();
  }

  @override
  Future<Either<List, String>> getCountries() async {
    // TODO: implement getCountries
    throw UnimplementedError();
  }
}
