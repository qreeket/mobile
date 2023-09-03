import 'package:flutter/material.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/features/common/presentation/pages/no.internet.dart';
import 'package:mobile/features/common/presentation/pages/unsupported.device.dart';
import 'package:mobile/features/groups/presentation/pages/create.channel.dart';
import 'package:mobile/features/groups/presentation/pages/create.group.dart';
import 'package:mobile/features/messaging/presentation/pages/video.call.dart';
import 'package:mobile/features/messaging/presentation/pages/voice.call.dart';
import 'package:mobile/features/onboarding/presentation/pages/auth/phone.verification.dart';
import 'package:mobile/features/onboarding/presentation/pages/auth/register.account.dart';
import 'package:mobile/features/onboarding/presentation/pages/login.dart';
import 'package:mobile/features/onboarding/presentation/pages/reset.password.dart';
import 'package:mobile/features/onboarding/presentation/pages/social.auth.dart';
import 'package:mobile/features/onboarding/presentation/pages/tutorial.dart';
import 'package:mobile/features/core/presentation/pages/home.dart';
import 'package:mobile/generated/assets.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shared_utils/shared_utils.dart';

final class AppRouterConfig {
  static Route<dynamic>? setupRoutes(RouteSettings settings) {
    // traverse routes
    switch (settings.name) {
      case AppRouter.initialRoute:
        return _initialRouteBuilder(settings);
      case AppRouter.unsupportedDeviceRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const UnsupportedDevicePage(), settings: settings);
      case AppRouter.noInternetRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const NoInternetPage(), settings: settings);
      case AppRouter.homeRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const HomePage(), settings: settings);
      case AppRouter.phoneVerificationRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => PhoneNumberVerificationPage(
                phoneNumber: settings.arguments.toString()),
            settings: settings);
      case AppRouter.signUpRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const RegisterAccountPage(), settings: settings);
      case AppRouter.signInWithRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const LoginPage(), settings: settings);
      case AppRouter.resetPasswordRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const ResetPasswordPage(), settings: settings);
      case AppRouter.welcomeRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const SocialAuthPage(), settings: settings);
      case AppRouter.tutorialRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const TutorialPage(), settings: settings);
      case AppRouter.createGroupRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const CreateGroupPage(), settings: settings);
      case AppRouter.createChannelRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) =>
                CreateChannelPage(group: settings.arguments as Group),
            settings: settings);
      case AppRouter.voiceCallRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const VoiceCallPage(), settings: settings);
      case AppRouter.videoCallRoute:
        return MaterialWithModalsPageRoute(
            builder: (_) => const VideoCallPage(), settings: settings);
    }

    return MaterialWithModalsPageRoute(
      builder: (context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0, backgroundColor: context.colorScheme.background),
        body: EmptyContentPlaceholder(
          icon: TablerIcons.building_factory,
          title: context.localizer.underDevelopment,
          subtitle: context.localizer.underDevelopmentSubhead,
        ),
      ),
    );
  }

  static Route<dynamic> _initialRouteBuilder(RouteSettings? settings) =>
      MaterialWithModalsPageRoute(
          builder: (context) {
            context.withDefaultOverlays(
                statusBarBrightness: context.theme.brightness);
            return Scaffold(
              body: Builder(
                builder: (context) => AnimatedColumn(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Assets.imgAppLogo.asAssetImage(size: context.width * 0.25),
                    const CircularProgressIndicator.adaptive().top(40),
                  ],
                ).centered(),
              ),
            );
          },
          settings: settings);
}

sealed class AppRouter {
  static const initialRoute = '/';
  static const tutorialRoute = '/walkthrough';
  static const welcomeRoute = '/welcome';
  static const homeRoute = '/home';
  static const signUpRoute = '/auth/sign-up';
  static const signInWithRoute = '/auth/sign-in';
  static const resetPasswordRoute = '/auth/sign-in/reset-password';
  static const phoneVerificationRoute = '/auth/phone-verification';
  static const editProfileRoute = '/edit-profile'; // todo
  static const profileRoute = '/profile'; // todo
  static const notificationsRoute = '/notifications'; // todo
  static const createGroupRoute = '/groups/new';
  static const groupInfoRoute = '/groups/details'; // todo
  static const createChannelRoute = '/groups/channels/new'; // todo
  static const manageSubscriptionRoute = '/auth/manage-subscription'; // todo
  static const unsupportedDeviceRoute = '/states/unsupported-device';
  static const noInternetRoute = '/states/no-internet';

  /// messaging
  static const voiceCallRoute = 'messaging/voice-call';
  static const videoCallRoute = 'messaging/video-call';
}
