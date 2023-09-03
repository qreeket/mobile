import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/actions.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:mobile/features/onboarding/presentation/widgets/auth.button.dart';
import 'package:mobile/generated/assets.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:shared_utils/shared_utils.dart';

class SocialAuthPage extends StatefulWidget {
  const SocialAuthPage({Key? key}) : super(key: key);

  @override
  State<SocialAuthPage> createState() => _SocialAuthPageState();
}

class _SocialAuthPageState extends State<SocialAuthPage>
    with TickerProviderStateMixin {
  late final _authCubit = context.read<AuthCubit>();
  var _loading = false;

  @override
  Widget build(BuildContext context) {
    context.withDefaultOverlays(
      statusBarBrightness: context.invertedThemeBrightness,
      statusBarColor: context.colorScheme.primary.generateColorShades().last,
      navigationBarColor: context.colorScheme.background,
    );
    return BlocListener(
      bloc: _authCubit,
      listener: (context, state) {
        if (!mounted) return;

        setState(() => _loading = state is LoadingState);

        if (state is ErrorState<String>) {
          context.showMessageDialog(state.failure);
        }

        if (state is SuccessState<Empty>) {
          context.navigator
              .pushNamedAndRemoveUntil(AppRouter.homeRoute, (_) => false);
        }

        if (state is SuccessState<AuthenticateWithSocialAccountRequest>) {
          context.completeSocialAuthRegistrationSheet(state.data);
        }
      },
      child: Scaffold(
        appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent),
        extendBodyBehindAppBar: true,
        body: LoadingIndicator(
          lottieAnimResource: Assets.animLoading,
          loadingAnimIsAsset: true,
          isLoading: _loading,
          child: Stack(
            children: [
              // background image
              Positioned(
                height: context.height * 0.5,
                width: context.width,
                top: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: context.isDarkMode
                        ? context.colorScheme.surfaceVariant
                        : null,
                    gradient: context.isDarkMode
                        ? null
                        : LinearGradient(
                            colors: context.colorScheme.primary
                                .generateColorShades(),
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                  ),
                  padding: EdgeInsets.only(
                      top: context.mediaQuery.padding.top + 16,
                      right: 16,
                      left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      context.localizer.appDevTeam.caption(context,
                          color: context.isDarkMode
                              ? context.colorScheme.onSurface
                              : context.colorScheme.onPrimary,
                          emphasis: kEmphasisMedium),
                      GlassMorphism(
                        margin: const EdgeInsets.only(top: 12),
                        borderRadius: BorderRadius.circular(40),
                        opacity: kEmphasisLowest,
                        border: Border.all(
                            color: context.isDarkMode
                                ? context.colorScheme.onSurface
                                : context.colorScheme.onPrimary
                                    .withOpacity(kEmphasisLowest),
                            width: 0.5),
                        child: AnimatedRow(
                          children: [
                            IconButton(
                              onPressed: openGithubRepo,
                              icon: SvgPicture.asset(
                                Assets.brandBrandGithub,
                                height: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: openTwitterProfile,
                              icon: SvgPicture.asset(
                                Assets.brandBrandTwitter,
                                height: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: openFacebookProfile,
                              icon: SvgPicture.asset(
                                Assets.brandBrandFacebook,
                                height: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: openYoutubeChannel,
                              icon: SvgPicture.asset(
                                Assets.brandBrandYoutube,
                                height: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -context.height * 0.37,
                right: -context.width * 0.4,
                child: Container(
                  height: context.height * 1.2,
                  width: context.height * 1.2,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.colorScheme.background,
                    boxShadow: [
                      BoxShadow(
                          color: context.colorScheme.onBackground
                              .withOpacity(kEmphasisLowest),
                          blurRadius: 64,
                          offset: const Offset(0, 32)),
                    ],
                  ),
                ),
              ),

              // main content
              Positioned.fill(
                top: context.height * 0.27,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // app logo & name
                    AnimatedRow(
                      children: [
                        Assets.imgAppLogo.asAssetImage(size: 36).right(16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            context.localizer.appName.h6(context),
                            context.localizer.appNameSubhead
                                .caption(context, emphasis: kEmphasisMedium),
                          ],
                        ),
                      ],
                    ),

                    // app description
                    context.localizer.appDescShort
                        .subtitle2(context, alignment: TextAlign.center)
                        .top(24),

                    // auth buttons
                    const SizedBox(height: 24),
                    AuthButton(
                        label: context.localizer.signInWithGoogle,
                        brandIcon: Assets.brandBrandGoogle,
                        onPressed: _authCubit.authenticateWithGoogle,
                        loading: _loading),

                    AuthButton(
                        label: context.localizer.signInWithApple,
                        brandIcon: context.isDarkMode
                            ? Assets.brandBrandApple
                            : Assets.brandBrandAppleLight,
                        iconTint: context.isDarkMode
                            ? context.colorScheme.onBackground
                            : null,
                        onPressed: _authCubit.authenticateWithApple,
                        loading: _loading),

                    AuthButton(
                        label: context.localizer.signInWithFacebook,
                        brandIcon: Assets.brandBrandFacebook,
                        onPressed: _authCubit.authenticateWithFacebook,
                        loading: _loading),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Expanded(
                            child: Divider(endIndent: 24, indent: 24)),
                        context.localizer.orText.caption(context),
                        const Expanded(
                            child: Divider(endIndent: 24, indent: 24)),
                      ],
                    ).vertical(12),

                    AuthButton(
                        label: context.localizer.signInWithEmail,
                        brandIcon: Assets.brandBrandEmail,
                        iconTint: context.colorScheme.onPrimary,
                        onPressed: () => context.navigator
                            .pushNamed(AppRouter.signInWithRoute),
                        outlined: false,
                        loading: _loading),

                    // sign up
                    TextButton(
                      onPressed: () =>
                          context.navigator.pushNamed(AppRouter.signUpRoute),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: context.localizer.signUpForAccount),
                            const TextSpan(text: " "),
                            TextSpan(
                              text: context.localizer.joinCommunity,
                              style: TextStyle(
                                  color: context.colorScheme.secondary),
                            ),
                          ],
                        ),
                        style: context.textTheme.labelLarge?.copyWith(
                          color: context.colorScheme.onBackground,
                        ),
                      ),
                    ).centered(),

                    const Spacer(),

                    // disclaimer
                    GestureDetector(
                      onTap: openTermsOfUse,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        margin: EdgeInsets.only(
                            top: 12,
                            bottom: context.mediaQuery.padding.bottom + 12),
                        decoration: BoxDecoration(
                          color: context.colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            context.localizer.disclaimer.caption(context,
                                emphasis: kEmphasisMedium,
                                alignment: TextAlign.center,
                                color: context.colorScheme.onSurface),
                          ],
                        ),
                      ).top(24),
                    ),
                  ],
                ).horizontal(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
