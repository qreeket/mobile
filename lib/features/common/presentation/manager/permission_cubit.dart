import 'package:bloc/bloc.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/features/common/domain/repositories/security.dart';
import 'package:shared_utils/shared_utils.dart';

class PermissionCubit extends Cubit<BlocState> {
  final _securityRepo = getIt<BaseSecurityRepository>();

  PermissionCubit() : super(BlocState.initialState());

  Future<bool> get isBiometricEnabled async =>
      await _securityRepo.isBiometricEnabled();

  Future<bool> get isNotificationsEnabled async =>
      await _securityRepo.isNotificationsEnabled();

  Future<void> toggleNotifications(bool enabled) async {
    emit(BlocState.loadingState());
    var either = await _securityRepo.toggleNotifications(enabled);
    either.fold(
        (l) => null, (r) => emit(BlocState<String>.errorState(failure: r)));
  }

  Future<void> toggleBiometrics(bool enabled) async {
    emit(BlocState.loadingState());
    var either = await _securityRepo.toggleBiometrics(enabled);
    either.fold(
        (l) => null, (r) => emit(BlocState<String>.errorState(failure: r)));
  }
}
