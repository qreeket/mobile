import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:mobile/generated/assets.dart';
import 'package:shared_utils/shared_utils.dart';

class NoInternetPage extends StatefulWidget {
  const NoInternetPage({Key? key}) : super(key: key);

  @override
  State<NoInternetPage> createState() => _NoInternetPageState();
}

class _NoInternetPageState extends State<NoInternetPage> {
  @override
  Widget build(BuildContext context) {
    kUseDefaultOverlays(context, statusBarBrightness: context.theme.brightness);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(Assets.animNoInternet, height: context.height * 0.35),
          context.localizer.noInternet
              .h6(context, weight: FontWeight.w600, alignment: TextAlign.center)
              .top(16),
          context.localizer.noInternetSubhead
              .subtitle2(context,
                  alignment: TextAlign.center, emphasis: kEmphasisMedium)
              .top(4),
          FutureBuilder<bool>(
              future: context.read<AuthCubit>().isLoggedIn,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SizedBox.shrink();
                }
                return AppRoundedButton(
                  text: context.localizer.goBack,
                  icon: TablerIcons.arrow_left,
                  onTap: () => context.navigator.pushNamedAndRemoveUntil(
                      snapshot.hasData && snapshot.data!
                          ? AppRouter.homeRoute
                          : AppRouter.tutorialRoute,
                      (route) => false),
                ).top(context.height * 0.1);
              }),
        ],
      ).horizontal(20).centered(),
    );
  }
}
