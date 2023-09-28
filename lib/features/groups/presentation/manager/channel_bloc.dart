import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/features/groups/domain/repositories/channel.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:shared_utils/shared_utils.dart';

part 'channel_event.dart';

@injectable
class ChannelBloc extends Bloc<ChannelEvent, BlocState> {
  final _repository = sl<BaseChannelRepository>();

  @factoryMethod
  ChannelBloc() : super(BlocState.initialState()) {
    on<GetChannels>((event, emit) async {
      emit(BlocState.loadingState());
      var either = await _repository.getChannels(event.group);
      either.fold(
        (channels) =>
            emit(BlocState<Stream<List<Channel>>>.successState(data: channels)),
        (error) => emit(BlocState<String>.errorState(failure: error)),
      );
    });

    on<GetChannel>((event, emit) async {
      emit(BlocState.loadingState());
      var either = await _repository.getChannel(event.id);
      either.fold(
        (channel) => emit(BlocState<Channel>.successState(data: channel)),
        (error) => emit(BlocState<String>.errorState(failure: error)),
      );
    });

    on<UpdateChannel>((event, emit) async {
      emit(BlocState.loadingState());
      var either = await _repository.updateChannel(event.channel);
      either.fold(
        (channel) => emit(BlocState<Channel>.successState(data: channel)),
        (error) => emit(BlocState<String>.errorState(failure: error)),
      );
    });

    on<DeleteChannel>((event, emit) async {
      emit(BlocState.loadingState());
      var either = await _repository.deleteChannel(event.id);
      either.fold(
        (data) => emit(BlocState<Empty>.successState(data: data)),
        (error) => emit(BlocState<String>.errorState(failure: error)),
      );
    });

    on<CreateChannel>((event, emit) async {
      emit(BlocState.loadingState());
      var either = await _repository.createChannel(
        name: event.name,
        description: event.description,
        group: event.group,
        isPublic: event.isPublic,
      );
      either.fold(
        (channel) => emit(BlocState<Channel>.successState(data: channel)),
        (error) => emit(BlocState<String>.errorState(failure: error)),
      );
    });
  }
}
