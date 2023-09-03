part of '../home.dart';

/// middle panel of the home page
class MainPanel extends StatefulWidget {
  final int pageIndex;
  final CoreBlocState initialState;

  const MainPanel({
    Key? key,
    required this.pageIndex,
    required this.initialState,
  }) : super(key: key);

  @override
  State<MainPanel> createState() => _MainPanelState();
}

class _MainPanelState extends State<MainPanel> {
  late final _coreBloc = context.read<CoreBloc>(),
      _appBloc = context.read<AppCubit>();
  late var _currentChannel = widget.initialState.channel,
      _currentDm = widget.initialState.dm;

  Widget get _buildChildFromIndex => IndexedStack(
        index: widget.pageIndex,
        clipBehavior: Clip.antiAlias,
        children: [
          DirectMessagingPage(initialState: _coreBloc.blocState),
          const InvitesPage(),
          const SearchChannelsPage(),
          const UserNotificationsPage(),
          const UserProfilePage(),
        ],
      );

  Widget get _renderTitle => BlocConsumer(
        bloc: _coreBloc,
        listener: (context, state) {
          if (!mounted) return;

          if (state is SuccessState<CoreBlocState>) {
            setState(() {
              _currentChannel = state.data.channel;
              _currentDm = state.data.dm;
            });
          }
        },
        builder: (context, state) {
          if (_currentDm != null && widget.pageIndex == 0) {
            return GestureDetector(
              onTap: () =>
                  OverlappingPanelsState.of(context)?.reveal(RevealSide.right),
              child: AnimatedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _currentDm!.name.subtitle1(context, weight: FontWeight.w600, maxLines: 1, overflow: TextOverflow.ellipsis),
                  if (_currentDm!.bio.isNotEmpty)
                    _currentDm!.bio.caption(context,
                        maxLines: 1, overflow: TextOverflow.ellipsis),
                ],
              ),
            );
          }

          if (widget.pageIndex == 0) {
            return GestureDetector(
              onTap: () =>
                  OverlappingPanelsState.of(context)?.reveal(RevealSide.right),
              child: (formatChannelName(_currentChannel?.name) ??
                      context.localizer.dms)
                  .subtitle1(context, weight: FontWeight.w600, maxLines: 1, overflow: TextOverflow.fade),
            );
          }

          return (widget.pageIndex == 1
                  ? context.localizer.invites
                  : widget.pageIndex == 2
                      ? context.localizer.search
                      : widget.pageIndex == 3
                          ? context.localizer.notifications
                          : context.localizer.profile)
              .subtitle1(context, weight: FontWeight.w600);
        },
      );

  @override
  void initState() {
    super.initState();
    doAfterDelay(context.read<AppCubit>().observeNetwork);
  }

  @override
  Widget build(BuildContext context) {
    double topPadding =
        12 + (widget.pageIndex == 0 ? 0 : context.mediaQuery.padding.top);
    return Builder(
      builder: (context) => Container(
        width: context.width,
        height: context.height,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: context.colorScheme.background),
        margin: EdgeInsets.symmetric(
            horizontal: context.mediaQuery.padding.horizontal),
        child: Column(
          children: [
            if (widget.pageIndex == 0) ...{
              AppBar(
                leading: IconButton(
                    onPressed: () => OverlappingPanelsState.of(context)
                        ?.reveal(RevealSide.left),
                    icon: const Icon(TablerIcons.menu_2)),
                actions: [
                  if (_currentChannel != null) ...{
                    IconButton(
                        onPressed: () => OverlappingPanelsState.of(context)
                            ?.reveal(RevealSide.right),
                        icon: const Icon(TablerIcons.hash)),
                    IconButton(
                        onPressed: context.showFeatureUnderDevSheet,
                        icon: const Icon(TablerIcons.list_search)),
                    IconButton(
                        onPressed: context.showFeatureUnderDevSheet,
                        icon: const Icon(TablerIcons.users)),
                  } else if (_currentDm != null)
                    IconButton(
                      onPressed: () =>
                          context.showMessengerInfoSheet(_currentDm!),
                      icon: const Icon(TablerIcons.user_circle),
                    ),
                ],
                title: _renderTitle,
                centerTitle: false,
              ),
            },

            // internet connection state
            BlocBuilder(
              bloc: _appBloc,
              builder: (context, state) {
                if (state is SuccessState<bool> && !state.data) {
                  return Container(
                    width: context.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(16, topPadding, 16, 12),
                    decoration: BoxDecoration(
                        color: context.colorScheme.errorContainer),
                    child: AnimatedRow(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(TablerIcons.wifi_off,
                                size: 16,
                                color: context.colorScheme.onErrorContainer)
                            .bottom(4)
                            .right(8),
                        context.localizer.noInternetSubhead.subtitle2(context,
                            color: context.colorScheme.onErrorContainer),
                      ],
                    ),
                  );
                }

                return const SizedBox.shrink();
              },
            ),
            Expanded(child: _buildChildFromIndex),
          ],
        ),
      ),
    );
  }
}
