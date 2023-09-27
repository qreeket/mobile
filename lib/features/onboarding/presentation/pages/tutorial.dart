import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/constants.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/generated/assets.dart';
import 'package:shared_utils/shared_utils.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage>
    with TickerProviderStateMixin {
  final _pageController = PageController(),
      _animations = [
        Assets.animShareIdeas,
        Assets.animStudentStudying,
      ];
  var _currentPage = 0;
  late final _titles = [
        context.localizer.onboardingPage2Title,
        context.localizer.onboardingPage1Title,
      ],
      _descriptions = [
        context.localizer.onboardingPage2Subhead,
        context.localizer.onboardingPage1Subhead,
      ];

  @override
  Widget build(BuildContext context) {
    context.withDefaultOverlays(
      statusBarBrightness: context.theme.brightness,
      navigationBarColor:
          context.colorScheme.primary.generateColorShades().last,
    );
    final isFirstPage = _currentPage == 0;
    return Scaffold(
      body: Stack(
        children: [
          // bottom curve
          AnimatedPositioned(
            duration: kDurationSlow,
            bottom: -context.height * 0.65,
            left: isFirstPage ? -context.width * 0.4 : null,
            right: isFirstPage ? null : -context.width * 0.4,
            child: Container(
              height: context.height,
              width: context.height,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.isDarkMode
                    ? context.colorScheme.surfaceVariant
                    : null,
                gradient: context.isDarkMode
                    ? null
                    : LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomLeft,
                        colors:
                            context.colorScheme.primary.generateColorShades(),
                      ),
              ),
            ),
          ),

          // page view
          Positioned.fill(
            bottom: context.height * 0.3,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) => Lottie.asset(
                      _animations[_currentPage],
                      height: context.height * 0.4,
                      width: context.width)
                  .horizontal(20)
                  .centered(),
            ),
          ),

          // skip button
          Positioned(
            top: context.mediaQuery.padding.top,
            right: context.mediaQuery.padding.right + 20,
            child: TextButton.icon(
              onPressed: () => context.navigator.pushNamedAndRemoveUntil(
                  AppRouter.welcomeRoute, (route) => false),
              icon: Icon(Icons.arrow_right_alt,
                  color: context.colorScheme.onBackground),
              label: context.localizer.skip.button(context),
            ),
          ),

          // bottom action container
          Positioned(
            bottom: context.mediaQuery.padding.bottom + 12,
            left: context.mediaQuery.padding.left + 16,
            right: context.mediaQuery.padding.right + 16,
            child: AnimatedColumn(
              crossAxisAlignment: isFirstPage
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              animateType:
                  isFirstPage ? AnimateType.slideLeft : AnimateType.slideRight,
              children: [
                _titles[_currentPage].h6(context,
                    color: context.isDarkMode
                        ? context.colorScheme.onSurface
                        : context.colorScheme.onPrimary),
                _descriptions[_currentPage]
                    .subtitle2(context,
                        color: context.isDarkMode
                            ? context.colorScheme.onSurface
                            : context.colorScheme.onPrimary,
                        alignment:
                            isFirstPage ? TextAlign.end : TextAlign.start,
                        emphasis: kEmphasisMedium)
                    .top(8),
                AppRoundedButton(
                    text: isFirstPage
                        ? context.localizer.next
                        : context.localizer.getStarted,
                    icon: TablerIcons.arrow_right,
                    iconLocation: IconLocation.end,
                    backgroundColor: context.colorScheme.onPrimary,
                    textColor: context.colorScheme.primary,
                    onTap: () => isFirstPage
                        ? _pageController.nextPage(
                            duration: kDurationFast, curve: Curves.easeInOut)
                        : context.navigator.pushNamedAndRemoveUntil(
                            AppRouter.welcomeRoute,
                            (route) =>
                                false)).top(24).align(Alignment.bottomRight),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
