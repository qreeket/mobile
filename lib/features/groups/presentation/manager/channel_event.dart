part of 'channel_bloc.dart';

abstract class ChannelEvent {
  const ChannelEvent();
}

class GetChannels extends ChannelEvent {
  final String group;

  const GetChannels(this.group);
}

class GetChannel extends ChannelEvent {
  final String id;

  const GetChannel(this.id);
}

class UpdateChannel extends ChannelEvent {
  final Channel channel;

  const UpdateChannel(this.channel);
}

class DeleteChannel extends ChannelEvent {
  final String id;

  const DeleteChannel(this.id);
}

class CreateChannel extends ChannelEvent {
  final String name, description, group;
  final bool isPublic;

  const CreateChannel({
    required this.name,
    required this.description,
    required this.group,
    this.isPublic = true,
  });
}
