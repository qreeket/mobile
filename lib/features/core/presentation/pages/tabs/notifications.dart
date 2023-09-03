part of '../home.dart';

class UserNotificationsPage extends StatefulWidget {
  const UserNotificationsPage({Key? key}) : super(key: key);

  @override
  State<UserNotificationsPage> createState() => _UserNotificationsPageState();
}

class _UserNotificationsPageState extends State<UserNotificationsPage> {
  var _selectedIndex = 0;
  final _loading = false;

  @override
  Widget build(BuildContext context) => LoadingIndicator(
        lottieAnimResource: Assets.animLoading,
        loadingAnimIsAsset: true,
        isLoading: _loading,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: PilledTabContainer(
                selectedIndex: _selectedIndex,
                onTabSelected: (index) =>
                    setState(() => _selectedIndex = index),
                labels: [
                  context.localizer.notifications,
                  context.localizer.mentions,
                ],
              ).horizontal(20),
            ),
            SliverFillRemaining(
              child: IndexedStack(
                index: _selectedIndex,
                children: [
                  _buildNotifications(),
                  _buildMentions(),
                ],
              ),
            ),
          ],
        ).top(context.mediaQuery.padding.top + 16),
      );

  // TODO: Implement this
  Widget _buildNotifications() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(Assets.animNothingFound, height: context.height * 0.15)
              .bottom(16),
          EmptyContentPlaceholder(
              title: context.localizer.noNotifications,
              subtitle: context.localizer.noNotificationsSubhead)
        ],
      );

  // TODO: Implement this
  Widget _buildMentions() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(Assets.animNothingFound, height: context.height * 0.15)
              .bottom(16),
          EmptyContentPlaceholder(
              title: context.localizer.noMentions,
              subtitle: context.localizer.noMentionsSubhead),
        ],
      );
}
