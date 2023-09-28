import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/generated/protos/common.pb.dart' as common;
import 'package:mobile/generated/protos/messaging.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:shared_utils/shared_utils.dart';
import 'package:uuid/uuid.dart';

part 'messaging_event.dart';

@injectable
class MessagingBloc extends Bloc<MessagingEvent, BlocState> {
  @factoryMethod
  MessagingBloc() : super(BlocState.initialState()) {
    on<GetDirectMessengersForCurrentUser>((event, emit) async {
      emit(BlocState.loadingState());
      // TODO: implement event handler
      emit(BlocState<List<DirectMessenger>>.successState(data: _dms));
    });

    on<SendMessageEvent>((event, emit) async {
      emit(BlocState.loadingState());
      // TODO: implement event handler
    });

    on<GetMessagesEvent>((event, emit) async {
      emit(BlocState.loadingState());
      // TODO: implement event handler
      emit(BlocState<List<MessageListItem>>.successState(data: _messages));
    });
  }

  final _dms = <DirectMessenger>[
    DirectMessenger(
      avatar:
          'https://images.unsplash.com/photo-1528901166007-3784c7dd3653?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZGV2ZWxvcGVyJTIwdGVhbXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=20',
      id: const Uuid().v4(),
      name: 'Qreeket Dev Team',
      bio: 'We are here to help you',
      online: false,
      lastSeen: common.Timestamp(
        seconds: Timestamp.fromDateTime(DateTime.now()).seconds,
        nanos: Timestamp.fromDateTime(DateTime.now()).nanos,
      ),
    ),
    DirectMessenger(
      avatar:
          'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aGFuZHNvbWUlMjBibGFjayUyMG1hbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=20',
      id: const Uuid().v4(),
      name: '@maxwell',
      online: true,
      bio: 'I am a developer and I love to code',
      lastSeen: common.Timestamp(
        seconds: Timestamp.fromDateTime(DateTime.now()).seconds,
        nanos: Timestamp.fromDateTime(DateTime.now()).nanos,
      ),
    ),
    DirectMessenger(
      avatar:
          'https://images.unsplash.com/photo-1597393922738-085ea04b5a07?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwYmxhY2slMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=20',
      id: const Uuid().v4(),
      name: '@bella-shapaz',
      blocked: true,
      bio: 'Customer Service Executive',
      lastSeen: common.Timestamp(
        seconds: Timestamp.fromDateTime(DateTime.now()).seconds,
        nanos: Timestamp.fromDateTime(DateTime.now()).nanos,
      ),
    ),
    DirectMessenger(
      avatar:
          'https://images.unsplash.com/photo-1593990965215-075c1f918806?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aGFuZHNvbWUlMjBibGFjayUyMG1hbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=20',
      id: const Uuid().v4(),
      name: '@derrick-exag',
      bio: 'I ❤️ Flutter',
      online: true,
      archived: true,
      lastSeen: common.Timestamp(
        seconds: Timestamp.fromDateTime(DateTime.now()).seconds,
        nanos: Timestamp.fromDateTime(DateTime.now()).nanos,
      ),
    ),
    DirectMessenger(
      avatar:
          'https://images.unsplash.com/photo-1508243771214-6e95d137426b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGhhbmRzb21lJTIwYmxhY2slMjBtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=20',
      id: const Uuid().v4(),
      name: '@calys',
      bio: 'Busy 😴',
      online: false,
      muted: true,
      lastSeen: common.Timestamp(
        seconds: Timestamp.fromDateTime(DateTime.now()).seconds,
        nanos: Timestamp.fromDateTime(DateTime.now()).nanos,
      ),
    ),
    DirectMessenger(
      avatar:
          'https://images.unsplash.com/photo-1613876215075-276fd62c89a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGJlYXV0aWZ1bCUyMGJsYWNrJTIwd29tYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=20',
      id: const Uuid().v4(),
      name: '@makafui',
      bio: 'Destined to break barriers 😇',
      lastSeen: common.Timestamp(
        seconds: Timestamp.fromDateTime(DateTime.now()).seconds,
        nanos: Timestamp.fromDateTime(DateTime.now()).nanos,
      ),
    ),
  ];

  final _messages = <MessageListItem>[
    MessageListItem(
      message: MessageChat(
        id: const Uuid().v4(),
        body: 'Who\'s got notes for today\'s lecture?',
        mentions: [
          '@john.doe',
          '@jane.doe',
          '@samuel.lincoln',
          '@carl.johnson'
        ],
        sender: 'jane.doe',
        status: MessageStatus.MESSAGE_STATUS_READ,
        readBy: ['jane.doe', 'john.doe'],
      ),
    ),
    MessageListItem(
      message: MessageChat(
        id: const Uuid().v4(),
        body: 'I\'ve got the notes',
        mentions: [
          '@john.doe',
          '@jane.doe',
          '@samuel.lincoln',
          '@carl.johnson'
        ],
        sender: 'samuel.lincoln',
        status: MessageStatus.MESSAGE_STATUS_RECEIVED,
        readBy: ['jane.doe'],
      ),
    ),
    MessageListItem(
      message: MessageChat(
        id: const Uuid().v4(),
        body: 'Send them please',
        mentions: ['@jane.doe'],
        sender: 'jane.doe',
        status: MessageStatus.MESSAGE_STATUS_RECEIVED,
        readBy: ['jane.doe', 'john.doe', '@carl.johnson'],
      ),
    ),
    MessageListItem(
      message: MessageChat(
        id: const Uuid().v4(),
        body: 'I need them too',
        mentions: ['@samuel.lincoln'],
        sender: 'carl.johnson',
        status: MessageStatus.MESSAGE_STATUS_RECEIVED,
        readBy: ['jane.doe'],
      ),
    ),
    MessageListItem(
      message: MessageChat(
        id: const Uuid().v4(),
        body: 'I\'ve sent them',
        mentions: ['@everyone'],
        sender: 'samuel.lincoln',
        status: MessageStatus.MESSAGE_STATUS_RECEIVED,
        readBy: ['jane.doe', 'john.doe', '@carl.johnson'],
      ),
    ),
    MessageListItem(
      message: MessageChat(
        id: const Uuid().v4(),
        body: 'Thanks',
        mentions: ['@samuel.lincoln'],
        sender: 'jane.doe',
        status: MessageStatus.MESSAGE_STATUS_RECEIVED,
        readBy: ['jane.doe', 'john.doe', '@carl.johnson'],
      ),
    ),
  ];
}
