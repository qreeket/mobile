part of '../home.dart';

/// Left side panel for the home page.
/// This is the panel that slides in from the left side of the screen.
class LeftSidePanel extends StatefulWidget {
  const LeftSidePanel({Key? key}) : super(key: key);

  @override
  State<LeftSidePanel> createState() => _LeftSidePanelState();
}

class _LeftSidePanelState extends State<LeftSidePanel> {
  late final _coreBloc = context.read<CoreBloc>(),
      _groupBloc = context.read<GroupBloc>(),
      _channelBloc = context.read<ChannelBloc>();
  final _messagingBloc = sl<MessagingBloc>();

  @override
  void initState() {
    super.initState();
    _messagingBloc.add(GetDirectMessengersForCurrentUser());
    _groupBloc.add(const GetGroupsForCurrentUser());
  }

  @override
  Widget build(BuildContext context) {
    context.withDefaultOverlays(statusBarBrightness: context.theme.brightness);
    return Builder(
      builder: (context) => Row(
        children: [
          /// groups
          Container(
            width: kToolbarHeight * 1.2,
            height: context.height,
            padding: EdgeInsets.fromLTRB(8, context.mediaQuery.padding.top + 8,
                8, context.mediaQuery.padding.bottom + 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _coreBloc
                    ..add(const SetCurrentGroupEvent())
                    ..add(const SetCurrentChannelEvent()),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      AnimatedContainer(
                        duration: kDurationFast,
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: context.colorScheme.primary,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Icon(TablerIcons.message_2,
                                color: context.colorScheme.onSecondary)
                            .bottom(4),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () =>
                      context.navigator.pushNamed(AppRouter.createGroupRoute),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      AnimatedContainer(
                        duration: kDurationFast,
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: context.colorScheme.primary,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: HeroIcon(
                          HeroIcons.userGroup,
                          color: context.colorScheme.onPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 20),
                Expanded(
                  child: BlocBuilder(
                    bloc: _groupBloc,
                    builder: (context, state) {
                      if (state is SuccessState<Stream<List<Group>>>) {
                        return StreamBuilder<List<Group>>(
                            stream: state.data,
                            builder: (context, snapshot) {
                              var groups =
                                  snapshot.hasData ? snapshot.data! : <Group>[];
                              return ListView.separated(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) =>
                                    GroupIconWidget(group: groups[index]),
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 16),
                                itemCount: groups.length,
                              );
                            });
                      }

                      return const SizedBox.shrink();
                    },
                  ),
                ),
              ],
            ),
          ),

          /// group details
          Expanded(
            child: BlocBuilder(
              bloc: _coreBloc,
              builder: (context, state) => Container(
                height: context.height,
                margin: EdgeInsets.fromLTRB(
                    0, context.mediaQuery.padding.top, 0, 8),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: state is SuccessState<CoreBlocState> &&
                        state.data.group != null
                    ? _buildGroupDetails()
                    : _buildDirectMessagingDetails(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDirectMessagingDetails() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          context.localizer.dms
              .subtitle1(context, weight: FontWeight.bold)
              .left(20)
              .top(16),
          GestureDetector(
            onTap: context.showSearchSheet,
            child: Container(
              width: context.width,
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  context.localizer.findConversationHint
                      .subtitle2(context, emphasis: kEmphasisMedium),
                  Icon(TablerIcons.search,
                          size: 20,
                          color: context.colorScheme.onSurface
                              .withOpacity(kEmphasisLow))
                      .bottom(4),
                ],
              ),
            ),
          ).horizontal(16).bottom(8),
          Expanded(
            child: BlocBuilder(
              bloc: _messagingBloc,
              builder: (context, state) {
                if (state is SuccessState<List<DirectMessenger>>) {
                  if (state.data.isEmpty) {
                    return AnimatedColumn(
                      animateType: AnimateType.slideDown,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Lottie.asset(Assets.animNoMessage,
                            repeat: false, height: context.height * 0.15),
                        context.localizer.noDms
                            .subtitle2(context, weight: FontWeight.bold),
                        context.localizer.noDmsSubhead
                            .caption(context,
                                emphasis: kEmphasisMedium,
                                alignment: TextAlign.center)
                            .top(4),
                        GestureDetector(
                          onTap: context.showSearchSheet,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            decoration: BoxDecoration(
                              color: context.colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                context.localizer.addFriends.caption(context,
                                    color: context.colorScheme.background),
                                Icon(TablerIcons.heart_plus,
                                        size: 20,
                                        color: context.colorScheme.background)
                                    .bottom(4),
                              ],
                            ),
                          ),
                        ).top(40),
                      ],
                    ).horizontal(context.width * 0.1).centered();
                  }

                  var archived = state.data.where((e) => e.archived).toList();
                  var active = state.data
                      .where((e) => !e.archived && !e.blocked)
                      .toList();
                  var blocked = state.data.where((e) => e.blocked).toList();

                  return ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      ExpandableLabel(
                          label:
                              '${context.localizer.active} — ${active.length}'),
                      ListView.separated(
                        padding: const EdgeInsets.only(top: 8, bottom: 16),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => DirectMessengerWidget(
                            directMessenger: active[index]),
                        separatorBuilder: (_, __) => const SizedBox(height: 4),
                        itemCount: active.length,
                      ),
                      if (archived.isNotEmpty) ...{
                        ExpandableLabel(
                            label:
                                '${context.localizer.archived} — ${archived.length}'),
                        ListView.separated(
                          padding: const EdgeInsets.only(top: 8, bottom: 16),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) =>
                              DirectMessengerWidget(
                                  directMessenger: archived[index]),
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 4),
                          itemCount: archived.length,
                        ),
                      },
                      if (blocked.isNotEmpty) ...{
                        ExpandableLabel(
                            label:
                                '${context.localizer.blocked} — ${blocked.length}'),
                        ListView.separated(
                          padding: const EdgeInsets.only(top: 8, bottom: 16),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) =>
                              DirectMessengerWidget(
                                  directMessenger: blocked[index]),
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 4),
                          itemCount: blocked.length,
                        ),
                      },
                    ],
                  );
                }
                return const CircularProgressIndicator.adaptive().centered();
              },
            ),
          ),
        ],
      );

  Widget _buildGroupDetails() => BlocBuilder(
        bloc: _coreBloc,
        builder: (context, state) {
          if (state is SuccessState<CoreBlocState> &&
              state.data.group != null) {
            var group = state.data.group;
            if (group != null) _channelBloc.add(GetChannels(group.id));
            return BlocBuilder(
              bloc: _channelBloc,
              builder: (context, channelState) {
                if (channelState is SuccessState<Stream<List<Channel>>>) {
                  return StreamBuilder<List<Channel>>(
                      stream: channelState.data,
                      builder: (context, snapshot) {
                        var publicChannels = snapshot.hasData
                                ? snapshot.data!
                                    .where((e) => e.type == ChannelType.public)
                                    .toList()
                                : <Channel>[],
                            privateChannels = snapshot.hasData
                                ? snapshot.data!
                                    .where((e) => e.type == ChannelType.private)
                                    .toList()
                                : <Channel>[];
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () => context.navigator.pushNamed(
                                  AppRouter.groupInfoRoute,
                                  arguments: group),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        group!.name.subtitle2(context,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            weight: FontWeight.w600),
                                        group.description.caption(context,
                                            emphasis: kEmphasisMedium,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis),
                                      ],
                                    ),
                                  ),
                                  const Icon(TablerIcons.dots).left(16),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: context.generateShareableLinkForGroup,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 12),
                                decoration: BoxDecoration(
                                  color: context.colorScheme.onBackground,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    context.localizer.inviteSubscribers.caption(
                                        context,
                                        color: context.colorScheme.background),
                                    Icon(TablerIcons.external_link,
                                            size: 20,
                                            color:
                                                context.colorScheme.background)
                                        .bottom(4),
                                  ],
                                ),
                              ),
                            ).top(20),
                            const ChannelTypeLabel(type: ChannelType.public),
                            ListView.separated(
                              padding: const EdgeInsets.only(top: 16),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => MenuChannelTile(
                                  channel: publicChannels[index]),
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 8),
                              itemCount: publicChannels.length,
                            ),
                            if (privateChannels.isNotEmpty) ...{
                              const ChannelTypeLabel(type: ChannelType.private),
                              ListView.separated(
                                padding: const EdgeInsets.only(top: 16),
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) =>
                                    MenuChannelTile(
                                        channel: privateChannels[index]),
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 8),
                                itemCount: privateChannels.length,
                              ),
                            },
                            const Spacer(),
                            GestureDetector(
                              onTap: () => context.navigator.pushNamed(
                                  AppRouter.createChannelRoute,
                                  arguments: group),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 12),
                                decoration: BoxDecoration(
                                  color: context.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    context.localizer.createChannel.caption(
                                        context,
                                        color: context.colorScheme.onPrimary),
                                    Icon(TablerIcons.network,
                                            size: 20,
                                            color:
                                                context.colorScheme.onPrimary)
                                        .bottom(4),
                                  ],
                                ),
                              ),
                            ).top(20),
                          ],
                        );
                      });
                }

                return const CircularProgressIndicator.adaptive().centered();
              },
            );
          }
          return const SizedBox.shrink();
        },
      ).horizontal(16).vertical(16);
}
