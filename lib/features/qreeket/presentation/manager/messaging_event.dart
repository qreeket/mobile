part of 'messaging_bloc.dart';

abstract class MessagingEvent {
  const MessagingEvent();
}

class SendMessageEvent extends MessagingEvent {
  final String message;
  final File? file;
  final MessageAttachmentType type;

  SendMessageEvent({
    required this.message,
    this.file,
    this.type = MessageAttachmentType.MESSAGE_ATTACHMENT_TYPE_UNSPECIFIED,
  });
}

class GetMessagesEvent extends MessagingEvent {
  final String? groupId;
  final String? channelId;
  final String? dmId;
  final int limit;
  final int offset;

  GetMessagesEvent({
    this.channelId,
    this.groupId,
    this.dmId,
    this.limit = 50,
    this.offset = 0,
  });
}

class GetDirectMessengersForCurrentUser extends MessagingEvent {}
