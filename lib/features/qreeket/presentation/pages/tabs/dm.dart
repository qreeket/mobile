part of '../home.dart';

class DirectMessagingPage extends StatefulWidget {
  final CoreBlocState initialState;

  const DirectMessagingPage({Key? key, required this.initialState})
      : super(key: key);

  @override
  State<DirectMessagingPage> createState() => _DirectMessagingPageState();
}

class _DirectMessagingPageState extends State<DirectMessagingPage> {
  final _messageController = TextEditingController(),
      _focusNode = FocusNode(),
      _scrollController = ScrollController();
  var _showSendButton = false,
      // _loading = true,
      _unreadMessages = 0,
      _messagesAndThreads = List<MessageListItem>.empty(growable: true);
  late final _messagingBloc = context.read<MessagingBloc>(),
      _coreBloc = context.read<CoreBloc>();
  late var _currentGroup = widget.initialState.group,
      _currentChannel = widget.initialState.channel,
      _currentDm = widget.initialState.dm;

  Widget get _buildGroupChannelHeader {
    return (_currentGroup == null || _currentChannel == null) &&
            _messagesAndThreads.isEmpty
        ? const SizedBox.shrink()
        : AnimatedColumn(
            animateType: AnimateType.slideRight,
            children: [
              if (_currentGroup != null)
                _currentGroup!.icon
                    .avatar(size: 72, circular: true)
                    .align(Alignment.centerLeft)
                    .bottom(16),
              if (_currentChannel != null) ...{
                context.localizer
                    .welcomeToChannel(
                        formatChannelName(_currentChannel?.name) ?? 'general')
                    .subtitle1(context,
                        alignment: TextAlign.center, weight: FontWeight.w600)
                    .align(Alignment.centerLeft),
                context.localizer
                    .welcomeToChannelSubhead(_currentChannel?.description ?? '')
                    .bodyText2(context, emphasis: kEmphasisMedium)
                    .align(Alignment.centerLeft),
              },
              if (_currentGroup != null) ...{
                _decoratedActionTile(
                  title: context.localizer.inviteSubscribers,
                  subtitle: context.localizer.inviteSubscribersSubhead,
                  icon: TablerIcons.external_link,
                  onTap: context.generateShareableLinkForGroup,
                ).top(24),
                _decoratedActionTile(
                  title: context.localizer.personalizeChannel,
                  subtitle: context.localizer.personalizeChannelSubhead,
                  icon: TablerIcons.layout_collage,
                  // TODO implement personalize channel
                  onTap: context.showFeatureUnderDevSheet,
                ),
              },
            ],
          );
  }

  Widget get _buildEmptyState => AnimatedColumn(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(Assets.animWimpusDiscordWaving,
                  height: context.height * 0.2)
              .bottom(16),
          context.localizer.startConversation
              .subtitle2(context, weight: FontWeight.bold),
          context.localizer
              .startConversationSubhead(
                  _currentDm?.name ?? _currentChannel?.name ?? '')
              .caption(context,
                  emphasis: kEmphasisMedium, alignment: TextAlign.center)
              .horizontal(context.width * 0.15)
              .top(4),
        ],
      ).centered();

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener(
            bloc: _coreBloc,
            listener: (context, state) {
              if (!mounted) return;

              if (state is SuccessState<CoreBlocState>) {
                setState(() {
                  _currentGroup = state.data.group;
                  _currentChannel = state.data.channel;
                  _currentDm = state.data.dm;
                });
              }
            },
          ),
          BlocListener(
            bloc: _messagingBloc,
            listener: (context, state) {
              if (!mounted) return;

              // setState(() => _loading = state is LoadingState);

              if (state is SuccessState<List<MessageListItem>>) {
                // TODO implement unread messages (user id should be part of readBy list)
                _unreadMessages = state.data
                    .where((item) => item.message.readBy.isEmpty)
                    .length;
                setState(() => _messagesAndThreads = state.data);
                _scrollController.scrollToBottom();
              }
            },
          ),
        ],
        child: Column(
          children: [
            if (_unreadMessages > 0)
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: context.colorScheme.errorContainer,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child:
                          context.localizer.numberOfUnreadMessages(3).caption(
                                context,
                                color: context.colorScheme.onErrorContainer,
                              ),
                    ),
                    GestureDetector(
                      onTap: context.showFeatureUnderDevSheet,
                      child: Icon(TablerIcons.x,
                              size: 20,
                              color: context.colorScheme.onErrorContainer)
                          .left(16),
                    ),
                  ],
                ),
              ),

            // chat messages
            Expanded(
              child: _messagesAndThreads.isEmpty && _currentDm != null
                  ? _buildEmptyState
                  : ListView(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
                      reverse: true,
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      controller: _scrollController,
                      children: [
                        /// show group header only if there is no message in the channel
                        if (_currentDm == null)
                          _buildGroupChannelHeader

                        /// show empty state if there is no message in the dm
                        else if (_messagesAndThreads.isNotEmpty)
                          ..._messagesAndThreads.map(
                            (item) => ChatMessageItem(item: item),
                          ),
                      ],
                    ),
            ),

            // chat input field
            Container(
              padding: EdgeInsets.fromLTRB(
                  context.mediaQuery.padding.left + 16,
                  8,
                  context.mediaQuery.padding.right + 16,
                  context.mediaQuery.padding.bottom + 8),
              decoration: BoxDecoration(color: context.colorScheme.background),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: InputFieldWithoutBorders(
                      controller: _messageController,
                      hint: context.localizer.messageHint(_currentDm?.name ??
                          formatChannelName(_currentChannel?.name) ??
                          ''),
                      prefixIcon: IconButton(
                        onPressed: context.showFeatureUnderDevSheet,
                        icon: Icon(TablerIcons.circle_plus,
                                color: context.colorScheme.outlineVariant)
                            .bottom(4),
                      ),
                      suffixIcon: IconButton(
                        onPressed: context.showFeatureUnderDevSheet,
                        icon: Icon(TablerIcons.mood_happy,
                                color: context.colorScheme.outlineVariant)
                            .bottom(4),
                      ),
                      focusNode: _focusNode,
                      textCapitalization: TextCapitalization.sentences,
                      textInputAction: TextInputAction.send,
                      onChanged: (value) {
                        setState(
                            () => _showSendButton = !value.isNullOrEmpty());
                        _focusNode.requestFocus();
                      },
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                  if (_showSendButton) ...{
                    FilledIconButton(
                            icon: TablerIcons.send, onPressed: _sendMessage)
                        .left(8),
                  },
                ],
              ),
            ),
          ],
        ),
      );

  Widget _decoratedActionTile({
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) =>
      DecoratedBox(
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          onTap: onTap,
          title: title.bodyText2(context,
              weight: FontWeight.w600, color: context.colorScheme.onSurface),
          subtitle: subtitle.caption(context,
              emphasis: kEmphasisMedium, color: context.colorScheme.onSurface),
          trailing: Icon(icon, color: context.colorScheme.onSurface),
        ),
      ).bottom(12);

  // Widget _buildTimestampHeader(String timestamp, [Color? color]) => Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         const Expanded(child: Divider()),
  //         '  $timestamp  '
  //             .bodyText2(context, color: color ?? context.colorScheme.onSurface)
  //             .centered(),
  //         const Expanded(child: Divider()),
  //       ],
  //     ).top(8);

  void _sendMessage() {
    var message = _messageController.text.trim();
    if (message.isNullOrEmpty()) return;
    logger.d('Sending message: $message');
    // todo send message to channel
    _messageController.clear();
    _focusNode.requestFocus();
    setState(() => _showSendButton = false);
    _scrollController.scrollToTop();
  }
}
