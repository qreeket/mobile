part of '../home.dart';

/// Right side panel for the home page.
/// This is the panel that slides in from the right side of the screen.
class RightSidePanel extends StatefulWidget {
  const RightSidePanel({Key? key}) : super(key: key);

  @override
  State<RightSidePanel> createState() => _RightSidePanelState();
}

class _RightSidePanelState extends State<RightSidePanel> {
  late final _coreBloc = context.read<CoreBloc>();
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    kUseDefaultOverlays(context, statusBarBrightness: context.theme.brightness);
    return Builder(
      builder: (context) => BlocBuilder(
        bloc: _coreBloc,
        builder: (context, state) {
          var channel =
              state is SuccessState<CoreBlocState> && state.data.channel != null
                  ? state.data.channel!
                  : null;
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: context.colorScheme.surface,
              borderRadius: BorderRadius.circular(16),
            ),
            child: channel == null
                ? AnimatedColumn(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset(Assets.animNothingFound,
                          height: context.height * 0.15),
                      context.localizer.nothingToShow
                          .subtitle2(context, weight: FontWeight.bold),
                      context.localizer.nothingToShowSubhead
                          .caption(context,
                              emphasis: kEmphasisMedium,
                              alignment: TextAlign.center)
                          .top(4),
                    ],
                  ).horizontal(20).centered()
                : Column(
                    children: [
                      ListTile(
                        title: formatChannelName(channel.name)
                            .subtitle2(context, weight: FontWeight.bold),
                        subtitle: channel.description.caption(context,
                            emphasis: kEmphasisMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                        onTap: () => context.showChannelInfoSheet(channel),
                        contentPadding: EdgeInsets.zero,
                        trailing: const Icon(TablerIcons.dots),
                        enableFeedback: true,
                      ),
                      const Divider(),
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildActionButton(context.localizer.threads,
                                    TablerIcons.hash),
                                _buildActionButton(
                                    context.localizer.pins, TablerIcons.pinned),
                                _buildActionButton(
                                    context.localizer.notifications,
                                    TablerIcons.notification),
                                _buildActionButton(context.localizer.settings,
                                    TablerIcons.settings),
                              ],
                            ).vertical(8),
                            const Divider(),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              trailing: const Icon(TablerIcons.external_link),
                              title: context.localizer.inviteSubscribers
                                  .subtitle2(context, weight: FontWeight.bold),
                              subtitle: context
                                  .localizer.inviteSubscribersSubhead
                                  .caption(context, emphasis: kEmphasisMedium),
                              onTap: context.generateShareableLinkForGroup,
                            ),
                            const Divider(),
                            PilledTabContainer(
                              labels: [
                                context.localizer.mentions,
                                context.localizer.subscribers
                              ],
                              selectedIndex: _selectedIndex,
                              background: context.colorScheme.surfaceVariant,
                              labelColor: context.colorScheme.onSurface,
                              onTabSelected: (index) =>
                                  setState(() => _selectedIndex = index),
                            ),
                            IndexedStack(
                              index: _selectedIndex,
                              children: [
                                _buildMentionsList(),
                                _buildSubscribersList(channel),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }

  Widget _buildActionButton(String label, IconData icon,
          [VoidCallback? onPressed]) =>
      GestureDetector(
        onTap: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: context.colorScheme.onBackground),
            label.caption(context).top(8),
          ],
        ),
      );

  Widget _buildSubscribersList(Channel channel) => channel.subscribers.isEmpty
      ? AnimatedColumn(
          animateType: AnimateType.slideRight,
          children: [
            Lottie.asset(Assets.animNothingFound, height: context.height * 0.15)
                .top(16),
            context.localizer.noSubscribers
                .subtitle2(context, weight: FontWeight.bold),
            context.localizer.inviteSubscribersSubhead
                .caption(context,
                    emphasis: kEmphasisMedium, alignment: TextAlign.center)
                .horizontal(context.width * 0.1)
                .top(4),
          ],
        ).centered()
      : ListView(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            '${context.localizer.online} — ${channel.subscribers.where((user) => user.online).length}'
                .subtitle2(context, weight: FontWeight.bold)
                .align(Alignment.centerLeft)
                .top(8),
            ...channel.subscribers
                .map((e) => SubscriberListTile(subscriber: e))
                .toList(),
          ],
        );

  // TODO: Implement mentions list
  Widget _buildMentionsList() => AnimatedColumn(
        animateType: AnimateType.slideRight,
        children: [
          Lottie.asset(Assets.animNothingFound, height: context.height * 0.15)
              .top(16),
          context.localizer.nothingToShow
              .subtitle2(context, weight: FontWeight.bold),
          context.localizer.noMentionsSubhead
              .caption(context,
                  emphasis: kEmphasisMedium, alignment: TextAlign.center)
              .horizontal(context.width * 0.1)
              .top(4),
        ],
      ).centered();
}
