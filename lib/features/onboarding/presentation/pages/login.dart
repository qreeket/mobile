import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/actions.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/core/utils/validator.dart';
import 'package:mobile/features/common/presentation/widgets/tab.container.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:mobile/generated/assets.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:shared_utils/shared_utils.dart';

part 'auth/login.with.email.dart';

part 'auth/login.with.phone.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _selectedIndex = 0, _loading = false;
  late final _authBloc = context.read<AuthCubit>();
  final _countryController = TextEditingController();
  Country? _selectedCountry;

  @override
  Widget build(BuildContext context) => BlocListener(
        bloc: _authBloc,
        listener: (context, state) {
          if (!mounted) return;

          setState(() => _loading = state is LoadingState);

          if (state is ErrorState<String>) {
            context.showMessageDialog(state.failure);
          }
        },
        child: Scaffold(
          body: LoadingIndicator(
            lottieAnimResource: Assets.animLoading,
            loadingAnimIsAsset: true,
            isLoading: _loading,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  systemOverlayStyle: SystemUiOverlayStyle.light,
                  expandedHeight: context.height * 0.22,
                  collapsedHeight: context.height * 0.16,
                  toolbarHeight: 0,
                  flexibleSpace: Container(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 20, right: 20),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            context.localizer.welcomeHeader.caption(context,
                                color: context.isDarkMode
                                    ? context.colorScheme.onSurface
                                    : context.colorScheme.onPrimary,
                                emphasis: kEmphasisMedium),
                            TextButton.icon(
                              onPressed: openWhatsappChat,
                              icon: Icon(TablerIcons.help,
                                  size: 20,
                                  color: context.isDarkMode
                                      ? context.colorScheme.onSurface
                                      : context.colorScheme.onPrimary
                                          .withOpacity(kEmphasisMedium)),
                              label: context.localizer.needHelp.caption(context,
                                  emphasis: kEmphasisMedium,
                                  color: context.isDarkMode
                                      ? context.colorScheme.onSurface
                                      : context.colorScheme.onPrimary),
                            ),
                          ],
                        ),
                        context.localizer.login.h5(context,
                            weight: FontWeight.w600,
                            color: context.isDarkMode
                                ? context.colorScheme.onSurface
                                : context.colorScheme.onPrimary),
                        context.localizer.loginSubhead
                            .subtitle2(context,
                                emphasis: kEmphasisMedium,
                                color: context.isDarkMode
                                    ? context.colorScheme.onSurface
                                    : context.colorScheme.onPrimary,
                                weight: FontWeight.w600)
                            .top(8),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: PilledTabContainer(
                    selectedIndex: _selectedIndex,
                    onTabSelected: (index) =>
                        setState(() => _selectedIndex = index),
                    labels: [
                      context.localizer.email,
                      context.localizer.phone,
                    ],
                  ).horizontal(20).top(20),
                ),
                SliverToBoxAdapter(
                  child: FilledTextField(
                    context.localizer.selectCountry,
                    controller: _countryController,
                    prefix: const Icon(TablerIcons.world_download),
                    validator: Validators.validate,
                    enabled: !_loading,
                    hint: context.localizer.selectCountrySubhead,
                    horizontalPadding: 20,
                    readOnly: true,
                    onTap: () async {
                      final country = await context.showCountryPickerSheet();

                      if (country != null) {
                        setState(() {
                          _selectedCountry = country;
                          _countryController.text = country.name;
                        });
                      }
                    },
                  ).top(20),
                ),
                SliverToBoxAdapter(
                  child: IndexedStack(
                    index: _selectedIndex,
                    children: [
                      LoginWithEmailAddressPage(country: _selectedCountry),
                      LoginWithPhoneNumberPage(country: _selectedCountry),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: TextButton(
                    onPressed: () => context.navigator
                        .pushNamed(AppRouter.resetPasswordRoute),
                    child: context.localizer.forgotPassword.button(context),
                  ).align(Alignment.centerRight).right(20),
                ),
              ],
            ),
          ),
        ),
      );
}
