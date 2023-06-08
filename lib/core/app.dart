import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/theme.dart';
import 'package:mobile/features/common/presentation/manager/app_cubit.dart';
import 'package:mobile/features/common/presentation/manager/common_cubit.dart';
import 'package:mobile/features/common/presentation/manager/permission_cubit.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:shared_utils/shared_utils.dart';

/// application entry point
class QreeketApp extends StatefulWidget {
  const QreeketApp({Key? key}) : super(key: key);

  @override
  State<QreeketApp> createState() => _QreeketAppState();
}

class _QreeketAppState extends State<QreeketApp> {
  final _authCubit = AuthCubit(),
      _navigatorKey = GlobalKey<NavigatorState>(),
      _appStateCubit = AppCubit();

  @override
  void initState() {
    super.initState();
    _appStateCubit.setupInitialRoute();
  }

  @override
  Widget build(BuildContext context) => DismissKeyboard(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => _authCubit),
            BlocProvider(create: (_) => _appStateCubit),
            BlocProvider(create: (_) => CommonCubit()),
            BlocProvider(create: (_) => PermissionCubit()),
          ],
          child: BlocListener(
            bloc: _appStateCubit,
            listener: (context, state) {
              if (!mounted) return;

              if (state is SuccessState<String>) {
                _navigatorKey.currentState
                    ?.pushNamedAndRemoveUntil(state.data, (route) => false);
              }
            },
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Qreeket',
              theme: context.useLightTheme,
              darkTheme: context.useDarkTheme,
              themeMode: ThemeMode.system,
              onGenerateRoute: AppRouterConfig.setupRoutes,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              navigatorKey: _navigatorKey,
              scrollBehavior: const CupertinoScrollBehavior(),
            ),
          ),
        ),
      );
}
