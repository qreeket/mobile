import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/constants.dart';
import 'package:mobile/core/utils/theme.dart';
import 'package:mobile/features/common/domain/repositories/notification.dart';
import 'package:mobile/features/common/presentation/globals.dart';
import 'package:mobile/features/common/presentation/manager/app_cubit.dart';
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
  late final _authCubit = sl<AuthCubit>(), _appBloc = sl<AppCubit>();

  @override
  void initState() {
    super.initState();
    doAfterDelay(() async {
      await _appBloc.setupInitialRoute();
      // register device to accept notifications
      await sl<BaseNotificationRepository>().registerDevice();
    });
  }

  @override
  Widget build(BuildContext context) => DismissKeyboard(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => _authCubit),
            BlocProvider(create: (_) => _appBloc),
            BlocProvider(create: (_) => sl<PermissionCubit>()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: kAppName,
            theme: context.useLightTheme,
            darkTheme: context.useDarkTheme,
            themeMode: ThemeMode.system,
            onGenerateRoute: AppRouterConfig.setupRoutes,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            navigatorKey: navigatorKey,
            scrollBehavior: const CupertinoScrollBehavior(),
          ),
        ),
      );
}
