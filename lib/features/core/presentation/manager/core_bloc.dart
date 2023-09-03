import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:mobile/generated/protos/messaging.pb.dart';
import 'package:shared_utils/shared_utils.dart';

part 'core_bloc.g.dart';

part 'core_event.dart';

@CopyWith()
class CoreBlocState {
  final DirectMessenger? dm;
  final Channel? channel;
  final Group? group;

  CoreBlocState({this.dm, this.channel, this.group});
}

class CoreBloc extends Bloc<CoreEvent, BlocState> {
  var blocState = CoreBlocState();

  CoreBloc() : super(BlocState.initialState()) {
    on<GetCurrentStateEvent>((event, emit) async {
      // TODO: implement event handler
      emit(BlocState<CoreBlocState>.successState(data: blocState));
    });

    on<SetCurrentGroupEvent>((event, emit) async {
      // TODO: implement event handler
      blocState = blocState.copyWith(group: event.group, dm: null, channel: null);
      emit(BlocState<CoreBlocState>.successState(data: blocState));
    });

    on<SetCurrentChannelEvent>((event, emit) async {
      // TODO: implement event handler
      blocState = blocState.copyWith(channel: event.channel, dm: null);
      emit(BlocState<CoreBlocState>.successState(data: blocState));
    });

    on<SetCurrentDMEvent>((event, emit) async {
      // TODO: implement event handler
      blocState = blocState.copyWith(dm: event.dm, channel: null);
      emit(BlocState<CoreBlocState>.successState(data: blocState));
    });
  }
}
