part of 'core_bloc.dart';

abstract class CoreEvent {
  const CoreEvent();
}

class SetCurrentChannelEvent extends CoreEvent {
  final Channel? channel;

  const SetCurrentChannelEvent({this.channel});
}

class SetCurrentGroupEvent extends CoreEvent {
  final Group? group;

  const SetCurrentGroupEvent({this.group});
}

class SetCurrentDMEvent extends CoreEvent {
  final DirectMessenger? dm;

  const SetCurrentDMEvent({this.dm});
}

class GetCurrentStateEvent extends CoreEvent {}