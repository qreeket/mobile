import 'package:bloc/bloc.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/features/common/domain/repositories/common.dart';
import 'package:shared_utils/shared_utils.dart';

class CommonCubit extends Cubit<BlocState> {
  final _commonRepo = getIt<BaseCommonRepository>();

  CommonCubit() : super(BlocState.initialState());

  Future<void> getCountries() async {
    emit(BlocState.loadingState());
    final result = await _commonRepo.getCountries();
    result.fold(
      (l) => emit(BlocState<List>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }

  Future<void> getColleges() async {
    emit(BlocState.loadingState());
    final result = await _commonRepo.getColleges();
    result.fold(
      (l) => emit(BlocState<List>.successState(data: l)),
      (r) => emit(BlocState<String>.errorState(failure: r)),
    );
  }
}
