import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/generated/protos/messaging.pb.dart';
import 'package:shared_utils/shared_utils.dart';

part 'chat/chat.message.new.user.dart';

part 'chat/chat.message.text.dart';

part 'chat/chat.message.image.dart';

// TODO -> build the chat message widget based on the type of message

// TODO -> new user message

// TODO -> new message

// TODO -> new message with image

// TODO -> new message with video

// TODO -> new message with audio

// TODO -> new message with file

// TODO -> new message with location

// TODO -> new message with source code

// TODO -> new message with link

// TODO -> new message with poll

// TODO -> new message with poll results

// TODO -> new message with new thread

class ChatMessageItem extends StatefulWidget {
  final MessageListItem item;

  const ChatMessageItem({Key? key, required this.item}) : super(key: key);

  @override
  State<ChatMessageItem> createState() => _ChatMessageItemState();
}

class _ChatMessageItemState extends State<ChatMessageItem> {
  late final _chat = widget.item;

  @override
  Widget build(BuildContext context) {
    Widget content = const SizedBox.shrink();
    // TODO -> build the chat message widget based on the type of message

    if (_chat is MessageChat) {
      // TODO -> new user message
    }

    if (_chat is MessageThread) {
      // TODO -> new message with new thread
    }

    content = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(TablerIcons.hash,
                color: context.colorScheme.onBackground, size: 20)
            .right(12),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '@${_chat.message.sender}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = context.showFeatureUnderDevSheet,
                    ),
                    const TextSpan(text: ' started a thread '),
                    TextSpan(
                      text: ':FlutterDev',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = context.showFeatureUnderDevSheet,
                    ),
                  ],
                ),
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: context.colorScheme.onBackground),
              ),
              'Yesterday at 10:23 AM'
                  .caption(context, emphasis: kEmphasisMedium)
                  .top(4),
              Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        'https://images.unsplash.com/photo-1624667773099-1b80ae774080?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXRpZnVsJTIwYmxhY2slMjB3b21hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=40'
                            .avatar(size: 24, circular: true)
                            .right(8),
                        'Makafui Dogoda'.caption(context,
                            color: context.colorScheme.onSurface,
                            weight: FontWeight.w600),
                      ],
                    ).bottom(8),
                    _chat.message.body.bodyText2(context,
                        color: context.colorScheme.onSurface),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ).top(16);

    return content;
  }
}
