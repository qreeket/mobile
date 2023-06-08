part of '../home.dart';

class InvitesPage extends StatefulWidget {
  const InvitesPage({Key? key}) : super(key: key);

  @override
  State<InvitesPage> createState() => _InvitesPageState();
}

class _InvitesPageState extends State<InvitesPage> {
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
                  context.localizer.invites,
                  context.localizer.subscriptions,
                ],
              ).horizontal(20),
            ),
            SliverFillRemaining(
              child: IndexedStack(
                index: _selectedIndex,
                children: [
                  _buildInvites(),
                  _buildSubscriptions(),
                ],
              ),
            ),
          ],
        ).top(context.mediaQuery.padding.top + 16),
      );

  // TODO: Implement this
  Widget _buildInvites() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(Assets.animNothingFound,
                  height: context.height * 0.15, repeat: false)
              .bottom(16),
          EmptyContentPlaceholder(
              title: context.localizer.noInvites,
              subtitle: context.localizer.noInvitesSubhead)
        ],
      );

  // TODO: Implement this
  Widget _buildSubscriptions() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(Assets.animNothingFound, height: context.height * 0.15)
              .bottom(16),
          EmptyContentPlaceholder(
              title: context.localizer.noSubscriptions,
              subtitle: context.localizer.noSubscriptionsSubhead),
        ],
      );
}
