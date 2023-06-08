import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroicons/heroicons.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/actions.dart';
import 'package:mobile/core/utils/constants.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/core/utils/formatters.dart';
import 'package:mobile/features/common/presentation/manager/app_cubit.dart';
import 'package:mobile/features/common/presentation/manager/permission_cubit.dart';
import 'package:mobile/features/common/presentation/widgets/menu.channel.dart';
import 'package:mobile/features/common/presentation/widgets/overlapping.panels.dart';
import 'package:mobile/features/common/presentation/widgets/tab.container.dart';
import 'package:mobile/features/groups/presentation/manager/channel_bloc.dart';
import 'package:mobile/features/groups/presentation/manager/group_bloc.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:mobile/features/qreeket/presentation/manager/core_bloc.dart';
import 'package:mobile/features/qreeket/presentation/manager/messaging_bloc.dart';
import 'package:mobile/features/qreeket/presentation/widgets/channel.type.label.dart';
import 'package:mobile/features/qreeket/presentation/widgets/chat.message.dart';
import 'package:mobile/features/qreeket/presentation/widgets/dm.tile.dart';
import 'package:mobile/features/qreeket/presentation/widgets/expandable.label.dart';
import 'package:mobile/features/qreeket/presentation/widgets/group.icon.dart';
import 'package:mobile/features/qreeket/presentation/widgets/icon.button.dart';
import 'package:mobile/features/qreeket/presentation/widgets/input.field.dart';
import 'package:mobile/features/qreeket/presentation/widgets/subscriber.tile.dart';
import 'package:mobile/generated/assets.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:mobile/generated/protos/messaging.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:shared_utils/shared_utils.dart';

part 'panels/left.side.panel.dart';

part 'panels/main.panel.dart';

part 'panels/right.side.panel.dart';

part 'tabs/dm.dart';

part 'tabs/invites.dart';

part 'tabs/notifications.dart';

part 'tabs/profile.dart';

part 'tabs/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final _coreBloc = CoreBloc(),
      _messagingBloc = MessagingBloc(),
      _navIcons = [
        TablerIcons.broadcast,
        TablerIcons.at,
        TablerIcons.list_search,
        TablerIcons.notification,
        TablerIcons.user_circle,
      ];
  var _currentIndex = 0, _hasActiveChat = false;
  late var _coreState = _coreBloc.blocState;

  @override
  void initState() {
    super.initState();
    _coreBloc.add(GetCurrentStateEvent());
  }

  @override
  Widget build(BuildContext context) {
    kUseDefaultOverlays(context, statusBarBrightness: context.theme.brightness);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _coreBloc),
        BlocProvider(create: (context) => GroupBloc()),
        BlocProvider(create: (context) => _messagingBloc),
        BlocProvider(create: (context) => ChannelBloc()),
      ],
      child: Scaffold(
        backgroundColor: context.colorScheme.surfaceVariant,
        body: BlocListener(
          bloc: _coreBloc,
          listener: (context, state) {
            if (!mounted) return;

            if (state is SuccessState<CoreBlocState>) {
              _hasActiveChat =
                  state.data.channel != null || state.data.dm != null;
              setState(() => _coreState = state.data);
            }
          },
          child: BlocBuilder(
            bloc: _messagingBloc,
            builder: (context, state) {
              // if current index is 0: show left panel if there is no channel or dm
              // else show main panel
              Widget? leftPanel, rightPanel;
              Widget mainPanel = MainPanel(
                pageIndex: _currentIndex,
                initialState: _coreState,
              );

              if (_currentIndex == 0) {
                leftPanel = const LeftSidePanel();
                rightPanel = _hasActiveChat ? const RightSidePanel() : null;
                if (!_hasActiveChat) mainPanel = const SizedBox.shrink();
              } else {
                leftPanel = null;
                rightPanel = null;
              }

              return OverlappingPanels(
                main: mainPanel,
                left: leftPanel,
                right: rightPanel,
                restWidth: _hasActiveChat ? context.width * 0.13 : 0,
              );
            },
          ),
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: _navIcons,
          activeIndex: _currentIndex,
          activeColor: context.colorScheme.onBackground,
          inactiveColor: context.theme.disabledColor,
          gapLocation: GapLocation.none,
          backgroundColor: context.colorScheme.surfaceVariant,
          elevation: 0,
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
    );
  }
}
