import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/features/groups/domain/repositories/group.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:shared_utils/shared_utils.dart';

part 'group_event.dart';

class GroupBloc extends Bloc<GroupEvent, BlocState> {
  final _groupRepo = getIt<BaseGroupRepository>();

  GroupBloc() : super(BlocState.initialState()) {
    on<CreateGroup>((event, emit) async {
      emit(BlocState.loadingState());
      var either = await _groupRepo.createGroup(
        name: event.name,
        description: event.description,
        image: event.image,
      );
      either.fold(
        (l) => emit(BlocState<Group>.successState(data: l)),
        (r) => emit(BlocState<String>.errorState(failure: r)),
      );
    });

    on<GetGroupsForCurrentUser>((event, emit) async {
      emit(BlocState.loadingState());
      var either = await _groupRepo.getGroupsForCurrentUser();
      either.fold(
        (l) => emit(BlocState<Stream<List<Group>>>.successState(data: l)),
        (r) => emit(BlocState<String>.errorState(failure: r)),
      );
    });

    on<GetGroupsForUser>((event, emit) async {
      emit(BlocState.loadingState());
      var either = await _groupRepo.getGroupsForUser(event.userId);
      var stream =
          either.fold((l) => l, (r) => const Stream<List<Group>>.empty());
      stream.listen(
          (data) => emit(BlocState<List<Group>>.successState(data: data)));
    });

    on<GetGroupById>((event, emit) async {
      emit(BlocState.loadingState());
      var either = await _groupRepo.getGroupById(event.groupId);
      either.fold(
        (l) => emit(BlocState<Group>.successState(data: l)),
        (r) => emit(BlocState<String>.errorState(failure: r)),
      );
    });
  }
}
