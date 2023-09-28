import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:heroicons/heroicons.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/constants.dart';
import 'package:mobile/core/utils/validator.dart';
import 'package:mobile/features/core/presentation/manager/core_bloc.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:mobile/generated/assets.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:mobile/generated/protos/messaging.pb.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_utils/shared_utils.dart';
import 'package:tinycolor2/tinycolor2.dart';

import 'actions.dart';

extension BuildContextX on BuildContext {
  AppLocalizations get localizer => AppLocalizations.of(this)!;

  bool get isDarkMode => theme.brightness == Brightness.dark;

  void showFeatureUnderDevSheet() async => showBarModalBottomSheet(
        context: this,
        backgroundColor: colorScheme.background,
        useRootNavigator: true,
        bounce: true,
        builder: (context) => AnimatedColumn(
          animateType: AnimateType.slideUp,
          children: [
            const SizedBox(height: 24),
            Lottie.asset(Assets.animUnderDev,
                    repeat: false, height: height * 0.2, width: width * 0.7)
                .bottom(24),
            EmptyContentPlaceholder(
                title: localizer.underDevelopment,
                subtitle: localizer.underDevelopmentSubhead),
            SafeArea(
              top: false,
              child: AppRoundedButton(
                      text: localizer.okay,
                      layoutSize: LayoutSize.standard,
                      onTap: context.navigator.pop)
                  .top(40),
            ),
          ],
        ),
      );

  // TODO -> show global search sheet (with search bar)
  void showSearchSheet() async => await showBarModalBottomSheet(
        context: this,
        backgroundColor: colorScheme.background,
        useRootNavigator: true,
        bounce: true,
        builder: (context) => AnimatedColumn(
          animateType: AnimateType.slideUp,
          children: [
            Lottie.asset(Assets.animUnderDev,
                    height: height * 0.2, width: width * 0.7)
                .bottom(24),
            EmptyContentPlaceholder(
                title: localizer.underDevelopment,
                subtitle: localizer.underDevelopmentSubhead),
            SafeArea(
              top: false,
              child: AppRoundedButton(
                      text: localizer.okay,
                      layoutSize: LayoutSize.standard,
                      onTap: context.navigator.pop)
                  .top(40),
            ),
          ],
        ),
      );

  // TODO -> show details of a direct messenger
  void showMessengerInfoSheet(DirectMessenger dm) async {
    // todo -> get user info from dm
    await showBarModalBottomSheet(
      context: this,
      backgroundColor: colorScheme.background,
      useRootNavigator: true,
      bounce: true,
      builder: (context) => AnimatedColumn(
        animateType: AnimateType.slideUp,
        children: [
          Lottie.asset(Assets.animUnderDev,
                  height: height * 0.2, width: width * 0.7)
              .bottom(24),
          EmptyContentPlaceholder(
              title: localizer.underDevelopment,
              subtitle: localizer.underDevelopmentSubhead),
          SafeArea(
            top: false,
            child: AppRoundedButton(
                    text: localizer.okay,
                    layoutSize: LayoutSize.standard,
                    onTap: context.navigator.pop)
                .top(40),
          ),
        ],
      ),
    );
  }

  // TODO -> show details of a channel
  void showChannelInfoSheet(Channel channel) async {
    await showBarModalBottomSheet(
      context: this,
      backgroundColor: colorScheme.background,
      useRootNavigator: true,
      bounce: true,
      builder: (context) => AnimatedColumn(
        animateType: AnimateType.slideUp,
        children: [
          Lottie.asset(Assets.animUnderDev,
                  height: height * 0.2, width: width * 0.7)
              .bottom(24),
          EmptyContentPlaceholder(
              title: localizer.underDevelopment,
              subtitle: localizer.underDevelopmentSubhead),
          SafeArea(
            top: false,
            child: AppRoundedButton(
                    text: localizer.okay,
                    layoutSize: LayoutSize.standard,
                    onTap: context.navigator.pop)
                .top(40),
          ),
        ],
      ),
    );
  }

  // TODO -> create a new channel
  Future<bool?> showPremiumAccountSheet() async {
    // TODO -> flow to show premium account details

    return await showBarModalBottomSheet<bool?>(
      context: this,
      backgroundColor: colorScheme.background,
      useRootNavigator: true,
      bounce: true,
      builder: (context) => AnimatedColumn(
        animateType: AnimateType.slideUp,
        children: [
          Lottie.asset(Assets.animUpgradeToPremium,
                  repeat: false, height: height * 0.2, width: width * 0.7)
              .bottom(24),
          EmptyContentPlaceholder(
              title: localizer.goPremium, subtitle: localizer.goPremiumSubhead),
          SafeArea(
            top: false,
            child: AppRoundedButton(
                    text: localizer.cancel,
                    layoutSize: LayoutSize.standard,
                    onTap: context.navigator.pop)
                .top(40),
          ),
        ],
      ),
    );
  }

  // collect additional user info
  Future<void> completeSocialAuthRegistrationSheet(
      AuthenticateWithSocialAccountRequest request) async {
    final authBloc = sl<AuthCubit>(),
        phoneVerificationBloc = sl<AuthCubit>(),
        checkEmailBloc = sl<AuthCubit>(),
        checkPhoneNumberBloc = sl<AuthCubit>(),
        formKey = GlobalKey<FormState>(),
        nameController = TextEditingController(text: request.username),
        phoneNumberController =
            TextEditingController(text: request.phoneNumber),
        emailController = TextEditingController(text: request.email),
        countryController = TextEditingController(),
        collegeController = TextEditingController(),
        pageController = PageController();

    var validated = false, emailAvailable = false, phoneAvailable = false;
    Country? selectedCountry;
    College? selectedCollege;
    var selectedAvatar = request.avatarUrl,
        isFromNetwork = selectedAvatar.startsWith('http'),
        loading = false;

    void validateFormFields() =>
        validated = (formKey.currentState?.validate() ?? false) &&
            selectedCountry != null &&
            selectedCollege != null;

    void verifyPhoneNumber() async {
      var successful = await navigator.pushNamed(
          AppRouter.phoneVerificationRoute,
          arguments: phoneNumberController.text);
      if (successful is bool && successful) {
        pageController.nextPage(
            duration: kDurationMedium, curve: Curves.easeInOut);
      }
    }

    if (!request.email.isNullOrEmpty()) {
      checkEmailBloc.checkEmail(request.email);
    }

    return await showCupertinoModalBottomSheet(
      context: this,
      enableDrag: false,
      bounce: true,
      useRootNavigator: true,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => MultiBlocListener(
          listeners: [
            BlocListener(
              bloc: authBloc,
              listener: (context, state) {
                setState(() => loading = state is LoadingState);
                if (state is SuccessState<Empty>) {
                  context.navigator.pushNamedAndRemoveUntil(
                      AppRouter.homeRoute, (route) => false);
                }
              },
            ),
            BlocListener(
              bloc: phoneVerificationBloc,
              listener: (context, state) {
                setState(() => loading = state is LoadingState);

                if (state is ErrorState<String>) {
                  context.showMessageDialog(state.failure,
                      showAsError: false,
                      title: context.localizer.verificationCodeSent,
                      onTap: verifyPhoneNumber);
                }

                if (state is SuccessState<Empty>) {
                  context.showMessageDialog(
                      context.localizer.verificationCodeSentSubhead,
                      showAsError: false,
                      title: context.localizer.verificationCodeSent,
                      onTap: verifyPhoneNumber);
                }
              },
            ),
            BlocListener(
              bloc: checkEmailBloc,
              listener: (context, state) {
                setState(() {
                  loading = state is LoadingState;
                  emailAvailable = state is SuccessState<Empty>;
                });

                if (state is ErrorState<String>) {
                  context.showMessageDialog(state.failure);
                }
              },
            ),
            BlocListener(
              bloc: checkPhoneNumberBloc,
              listener: (context, state) {
                setState(() {
                  loading = state is LoadingState;
                  phoneAvailable = state is SuccessState<Empty>;
                });

                if (state is ErrorState<String>) {
                  context.showMessageDialog(state.failure);
                }
              },
            ),
          ],
          child: BlocBuilder(
            bloc: authBloc,
            builder: (context, state) => Material(
              color: context.colorScheme.background,
              type: MaterialType.transparency,
              elevation: 0,
              child: AnimationLimiter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: PageView(
                    controller: pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollBehavior: const MaterialScrollBehavior()
                        .copyWith(overscroll: false),
                    children: [
                      // first page -> name, phone number, email, country and college
                      ListView(
                        shrinkWrap: true,
                        controller: ModalScrollController.of(context),
                        padding: EdgeInsets.zero,
                        children: AnimationConfiguration.toStaggeredList(
                          childAnimationBuilder: (child) => SlideAnimation(
                            verticalOffset: 50.0,
                            duration: kDurationMedium,
                            child: FadeInAnimation(child: child),
                          ),
                          children: [
                            if (state is ErrorState<String>) ...{
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                margin: EdgeInsets.only(
                                    top: 12,
                                    bottom: context.mediaQuery.padding.bottom),
                                decoration: BoxDecoration(
                                  color: context.colorScheme.error,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    state.failure.caption(context,
                                        emphasis: kEmphasisMedium,
                                        alignment: TextAlign.center,
                                        color: context.colorScheme.onError),
                                  ],
                                ),
                              ),
                            },
                            GestureDetector(
                              onTap: navigator.pop,
                              child: AnimatedRow(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(TablerIcons.arrow_left,
                                          color: colorScheme.onSurface)
                                      .right(4),
                                  localizer.cancel.button(context,
                                      color: colorScheme.onSurface),
                                ],
                              ).align(Alignment.topLeft).bottom(24),
                            ),
                            localizer.completeRegistration
                                .subtitle1(context, weight: FontWeight.w600)
                                .centered(),
                            localizer.completeRegistrationSubhead
                                .subtitle2(context,
                                    emphasis: kEmphasisMedium,
                                    alignment: TextAlign.center)
                                .centered(),
                            SizedBox(height: context.height * 0.05),
                            Form(
                              key: formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FilledTextField(
                                    context.localizer.username,
                                    controller: nameController,
                                    validator: Validators.validate,
                                    prefix: const Icon(TablerIcons.at),
                                    hint: context.localizer.usernameHint,
                                    capitalization: TextCapitalization.words,
                                    inputAction: TextInputAction.next,
                                    enabled: !loading,
                                    onChanged: (_) =>
                                        setState(validateFormFields),
                                  ),
                                  FilledTextField(
                                    context.localizer.email,
                                    prefix: const Icon(Icons.mail_lock),
                                    hint: context.localizer.emailHint,
                                    controller: emailController,
                                    validator: Validators.validateEmail,
                                    type: AppTextFieldType.email,
                                    enabled: request.email.isEmpty && !loading,
                                    inputAction: TextInputAction.next,
                                    onChanged: (_) =>
                                        setState(validateFormFields),
                                  ),
                                  if (emailAvailable) ...{
                                    FilledTextField(
                                      context.localizer.phoneNumber,
                                      prefix: const Icon(Icons.phone),
                                      hint: context.localizer.phoneNumberHint,
                                      type: AppTextFieldType.phone,
                                      controller: phoneNumberController,
                                      validator: Validators.validatePhone,
                                      enabled: !loading,
                                      onChanged: (input) {
                                        request.phoneNumber = input;
                                        setState(validateFormFields);
                                      },
                                    ),
                                    if (phoneAvailable) ...{
                                      FilledTextField(
                                        context.localizer.selectCountry,
                                        controller: countryController,
                                        prefix: const Icon(
                                            TablerIcons.world_download),
                                        validator: Validators.validate,
                                        enabled: !loading,
                                        hint: context
                                            .localizer.selectCountrySubhead,
                                        readOnly: true,
                                        onTap: () async {
                                          final country =
                                              await showCountryPickerSheet();

                                          if (country != null) {
                                            request.countryId = country.id;
                                            setState(() {
                                              selectedCountry = country;
                                              countryController.text =
                                                  country.name;
                                              validateFormFields();
                                            });
                                          }
                                        },
                                      ),
                                      if (selectedCountry != null)
                                        FilledTextField(
                                          context.localizer.selectCollege,
                                          controller: collegeController,
                                          prefix:
                                              const Icon(TablerIcons.school),
                                          validator: Validators.validate,
                                          enabled: !loading,
                                          hint: context
                                              .localizer.selectCollegeSubhead,
                                          readOnly: true,
                                          onTap: () async {
                                            final college =
                                                await showCollegePickerSheet(
                                                    selectedCountry!.id);

                                            if (college != null) {
                                              request.collegeId = college.id;
                                              setState(() {
                                                selectedCollege = college;
                                                collegeController.text =
                                                    college.name;
                                                validateFormFields();
                                              });
                                            }
                                          },
                                          onChanged: (_) =>
                                              setState(validateFormFields),
                                        ),
                                    },
                                  },
                                ],
                              ),
                            ),
                            SizedBox(height: height * 0.05),
                            if (loading) ...{
                              const CircularProgressIndicator.adaptive()
                                  .centered()
                                  .fillMaxHeight(context, 0.2),
                            } else ...{
                              AppRoundedButton(
                                text: localizer.continueText,
                                // enabled: validated && !loading,
                                onTap: () {
                                  if (formKey.currentState != null &&
                                      formKey.currentState!.validate()) {
                                    if (!emailAvailable) {
                                      var email = emailController.text.trim();
                                      checkEmailBloc.checkEmail(email);
                                      return;
                                    }

                                    if (!phoneAvailable) {
                                      var phone =
                                          phoneNumberController.text.trim();
                                      checkPhoneNumberBloc
                                          .checkPhoneNumber(phone);
                                      return;
                                    }

                                    phoneVerificationBloc.verifyPhoneNumber(
                                        phoneNumberController.text);
                                  }
                                },
                              ),
                            },
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 20, bottom: mediaQuery.padding.bottom),
                              child: GestureDetector(
                                onTap: openTermsOfUse,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.surface,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      context.localizer.disclaimer.caption(
                                          context,
                                          emphasis: kEmphasisMedium,
                                          alignment: TextAlign.center,
                                          color: context.colorScheme.onSurface),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // second page -> profile picture
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          context.localizer.tapToSelectProfilePicture
                              .subtitle1(context)
                              .centered(),
                          context.localizer.tapToSelectProfilePictureSubhead
                              .subtitle2(context,
                                  emphasis: kEmphasisMedium,
                                  alignment: TextAlign.center)
                              .centered(),
                          const SizedBox(height: 20),
                          DottedBorder(
                            color: context.colorScheme.onBackground
                                .withOpacity(kEmphasisLow),
                            borderType: BorderType.Circle,
                            dashPattern: const [6, 3, 2, 3],
                            padding: const EdgeInsets.all(6),
                            child: Container(
                              width: context.height * 0.2,
                              height: context.height * 0.2,
                              decoration: BoxDecoration(
                                color: context.colorScheme.surface,
                                shape: BoxShape.circle,
                              ),
                              child: selectedAvatar.isNullOrEmpty()
                                  ? Center(
                                      child: HeroIcon(
                                        HeroIcons.photo,
                                        size: context.height * 0.05,
                                        color: context.colorScheme.onSurface
                                            .withOpacity(kEmphasisLow),
                                      ),
                                    )
                                  : ClipOval(
                                      child: isFromNetwork
                                          ? selectedAvatar.asNetworkImage(
                                              size: context.height * 0.2)
                                          : selectedAvatar.asAssetImage(
                                              size: context.height * 0.2),
                                    ),
                            ),
                          ),
                          SizedBox(height: height * 0.05),
                          AppRoundedButton(
                            text: localizer.useThisPicture,
                            enabled: validated &&
                                !selectedAvatar.isNullOrEmpty() &&
                                !loading,
                            layoutSize: LayoutSize.matchParent,
                            onTap: () {
                              request.email = emailController.text.trim();
                              request.phoneNumber =
                                  phoneNumberController.text.trim();
                              authBloc.authenticate(request);
                            },
                          ),
                          if (loading) ...{
                            const CircularProgressIndicator.adaptive()
                                .centered()
                                .fillMaxHeight(context, 0.2),
                          } else ...{
                            TextButton(
                              onPressed: () async {
                                var avatar = await showPicturePickerSheet();
                                if (avatar == null) return;
                                request.avatarUrl = avatar;
                                setState(() {
                                  selectedAvatar = avatar;
                                  isFromNetwork = false;
                                });
                              },
                              child: context.localizer.pickAnotherPicture
                                  .button(context),
                            ).bottom(mediaQuery.padding.bottom).top(16),
                          },
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<String?> showPicturePickerSheet() async {
    final avatars = [
      Assets.avatarsAdventurer0,
      Assets.avatarsAdventurer1,
      Assets.avatarsAdventurer2,
      Assets.avatarsAdventurer3,
      Assets.avatarsAdventurer4,
      Assets.avatarsAdventurer5,
      Assets.avatarsAdventurer6,
      Assets.avatarsAdventurer7,
      Assets.avatarsAdventurer8,
      Assets.avatarsAdventurer9,
      Assets.avatarsAdventurer10,
      Assets.avatarsAdventurer11,
      Assets.avatarsAdventurer12,
      Assets.avatarsAdventurer13,
      Assets.avatarsAdventurer13,
      Assets.avatarsAdventurer14,
      Assets.avatarsAdventurer15,
      Assets.avatarsAdventurer16,
      Assets.avatarsAdventurer17,
      Assets.avatarsAdventurer18,
      Assets.avatarsAdventurer19,
    ];
    return await showBarModalBottomSheet(
      context: this,
      backgroundColor: colorScheme.background,
      useRootNavigator: true,
      bounce: true,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AnimatedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            context.localizer.tapToSelectProfilePicture
                .subtitle1(context)
                .horizontal(20)
                .top(20),
            context.localizer.tapToSelectProfilePictureSubhead
                .caption(context, emphasis: kEmphasisMedium)
                .horizontal(20),
            AnimationLimiter(
              child: GridView.builder(
                padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: mediaQuery.padding.bottom + 16),
                shrinkWrap: true,
                controller: ModalScrollController.of(context),
                semanticChildCount: avatars.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.85,
                    crossAxisCount: 4,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 8),
                itemCount: avatars.length,
                itemBuilder: (context, index) =>
                    AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: kDurationMedium,
                  columnCount: 4,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: GestureDetector(
                        onTap: () => context.navigator.pop(avatars[index]),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: context.theme.disabledColor
                                    .withOpacity(kEmphasisMedium)),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(avatars[index])),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ).fillMaxWidth(context).fillMaxHeight(context, 0.4),
            ),
          ],
        ),
      ),
    );
  }

  Future<Country?> showCountryPickerSheet() async {
    final authBloc = sl<AuthCubit>();
    authBloc.getCountries();

    return await showBarModalBottomSheet(
      context: this,
      backgroundColor: colorScheme.background,
      useRootNavigator: true,
      bounce: true,
      builder: (context) => BlocBuilder(
        bloc: authBloc,
        builder: (context, state) {
          if (state is SuccessState<List<Country>>) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                localizer.selectCountry
                    .subtitle1(context, weight: FontWeight.w600)
                    .top(16)
                    .left(20),
                localizer.selectCountrySubhead
                    .subtitle2(context, emphasis: kEmphasisMedium)
                    .bottom(16)
                    .top(4)
                    .left(20),
                ListView.builder(
                  shrinkWrap: true,
                  controller: ModalScrollController.of(context),
                  itemCount: state.data.length,
                  padding: EdgeInsets.only(
                      top: 0,
                      left: 20,
                      right: 20,
                      bottom: mediaQuery.padding.bottom + 16),
                  itemBuilder: (context, index) {
                    final country = state.data[index];
                    return ListTile(
                      onTap: () => context.navigator.pop(country),
                      minLeadingWidth: 28,
                      contentPadding: EdgeInsets.zero,
                      leading:
                          country.flagUrl.asSvg(size: 20, fromAsset: false),
                      title: Text('${country.name} (${country.dialCode})'),
                    );
                  },
                ),
              ],
            );
          }

          return const CircularProgressIndicator.adaptive()
              .centered()
              .fillMaxHeight(context, 0.2);
        },
      ),
    );
  }

  Future<College?> showCollegePickerSheet(String countryId) async {
    final authBloc = sl<AuthCubit>(),
        searchController = TextEditingController();
    authBloc.getColleges(countryId);
    var colleges = <College>[], filteredColleges = <College>[];

    return await showBarModalBottomSheet(
      context: this,
      backgroundColor: colorScheme.background,
      useRootNavigator: true,
      bounce: true,
      builder: (context) => StatefulBuilder(
          builder: (context, setState) => BlocConsumer(
                bloc: authBloc,
                listener: (context, state) {
                  if (state is SuccessState<List<College>>) {
                    colleges = state.data;
                    filteredColleges = colleges
                        .where((college) => college.name
                            .toLowerCase()
                            .contains(searchController.text.toLowerCase()))
                        .toList();
                    setState(() {});
                  }
                },
                builder: (context, state) {
                  if (state is SuccessState<List<College>>) {
                    return CustomScrollView(
                      shrinkWrap: true,
                      controller: ModalScrollController.of(context),
                      slivers: [
                        SliverToBoxAdapter(
                          child: localizer.selectCollege
                              .subtitle1(context, weight: FontWeight.w600)
                              .top(16)
                              .left(20),
                        ),
                        SliverToBoxAdapter(
                          child: localizer.selectCollegeSubhead
                              .subtitle2(context, emphasis: kEmphasisMedium)
                              .bottom(16)
                              .top(4)
                              .left(20),
                        ),
                        SliverToBoxAdapter(
                          child: FilledTextField(
                            localizer.search,
                            horizontalPadding: 20,
                            controller: searchController,
                            prefixIcon: Icons.search,
                            capitalization: TextCapitalization.none,
                            enabled: state is! LoadingState,
                            onChanged: (value) {
                              if (value.isEmpty) {
                                filteredColleges = colleges;
                                setState(() {});
                                return;
                              }

                              filteredColleges = colleges
                                  .where((college) => college.name
                                      .toLowerCase()
                                      .contains(value.toLowerCase()))
                                  .toList();
                              setState(() {});
                            },
                          ),
                        ),
                        SliverFillRemaining(
                          hasScrollBody: true,
                          child: ListView.separated(
                            shrinkWrap: true,
                            controller: ModalScrollController.of(context),
                            padding: EdgeInsets.only(
                                top: 0,
                                left: 20,
                                right: 20,
                                bottom: mediaQuery.padding.bottom + 16),
                            itemCount: filteredColleges.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 8),
                            itemBuilder: (context, index) {
                              final college = filteredColleges[index];
                              return ListTile(
                                onTap: () => context.navigator.pop(college),
                                minLeadingWidth: 28,
                                contentPadding: EdgeInsets.zero,
                                leading: college.logoUrl
                                    .avatar(size: 40, circular: true),
                                title: Text(college.name),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  }

                  if (state is ErrorState<String>) {
                    return EmptyContentPlaceholder(
                      title: localizer.nothingToShow,
                      subtitle: localizer.nothingToShowSubhead,
                    );
                  }

                  return const CircularProgressIndicator.adaptive()
                      .centered()
                      .fillMaxHeight(context, 0.4);
                },
              )),
    );
  }

  /// used for custom error messages / prompts
  void showMessageDialog(
    String message, {
    bool showAsError = true,
    String? title,
    String? actionLabel,
    String? animationAsset,
    VoidCallback? onTap,
  }) async {
    if (showAsError) {
      await showBarModalBottomSheet(
        context: this,
        backgroundColor: colorScheme.background,
        useRootNavigator: true,
        bounce: true,
        builder: (context) => AnimatedColumn(
          animateType: AnimateType.slideRight,
          children: [
            Lottie.asset(
                    animationAsset ??
                        (showAsError ? Assets.animError : Assets.animSuccess),
                    frameRate: FrameRate(90),
                    repeat: false,
                    fit: BoxFit.fitHeight,
                    height: height * 0.1,
                    width: width * 0.7)
                .bottom(24),
            EmptyContentPlaceholder(
                title: title ?? localizer.errorMessage, subtitle: message),
            SafeArea(
              top: false,
              child: AppRoundedButton(
                text: actionLabel ?? localizer.okay,
                layoutSize: LayoutSize.standard,
                onTap: () {
                  context.navigator.pop();
                  onTap?.call();
                },
              ).top(40),
            ),
          ],
        ).top(24),
      );
    } else {
      await showCupertinoModalBottomSheet(
        context: this,
        backgroundColor: colorScheme.background,
        useRootNavigator: true,
        isDismissible: false,
        enableDrag: false,
        bounce: true,
        builder: (context) => AnimatedColumn(
          animateType: AnimateType.slideRight,
          children: [
            Lottie.asset(Assets.animSuccess,
                    frameRate: FrameRate(90),
                    repeat: false,
                    fit: BoxFit.fitHeight,
                    height: height * 0.1,
                    width: width * 0.7)
                .bottom(24),
            EmptyContentPlaceholder(
                title: title ?? localizer.successMessage, subtitle: message),
            SafeArea(
              top: false,
              child: AppRoundedButton(
                text: actionLabel ?? localizer.okay,
                layoutSize: LayoutSize.standard,
                onTap: () {
                  context.navigator.pop();
                  onTap?.call();
                },
              ).top(40),
            ),
          ],
        ).top(24),
      );
    }
  }

  Future<bool?> showDeleteAccountSheet(Account account) async {
    final authBloc = sl<AuthCubit>();
    var loading = false,
        acceptTerms = false,
        acceptSubscriptionDeletion = false,
        acceptDataDeletion = false;

    return await showCupertinoModalBottomSheet(
      context: this,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => BlocConsumer(
          bloc: authBloc,
          listener: (context, state) {
            setState(() => loading = state is LoadingState);

            if (state is SuccessState<Empty>) {
              context.navigator.pop(true);
            }
          },
          builder: (context, state) => Material(
            type: MaterialType.transparency,
            color: colorScheme.background,
            elevation: 0,
            child: ListView(
              shrinkWrap: true,
              controller: ModalScrollController.of(context),
              padding: EdgeInsets.fromLTRB(
                  20, 24, 20, mediaQuery.padding.bottom + 24),
              children: [
                Lottie.asset(Assets.animUserLeaving,
                        height: context.height * 0.15)
                    .bottom(16),
                context.localizer.deleteAccount
                    .subtitle1(context, weight: FontWeight.w600)
                    .centered(),
                context.localizer.deleteAccountDesc
                    .subtitle2(context,
                        emphasis: kEmphasisMedium, alignment: TextAlign.center)
                    .centered()
                    .top(8),
                if (state is ErrorState<String>) ...{
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    margin: EdgeInsets.only(
                        top: 12, bottom: context.mediaQuery.padding.bottom),
                    decoration: BoxDecoration(
                      color: context.colorScheme.error,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        state.failure.caption(context,
                            emphasis: kEmphasisMedium,
                            alignment: TextAlign.center,
                            color: context.colorScheme.onError),
                      ],
                    ),
                  ),
                },
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  margin: const EdgeInsets.only(top: 20, bottom: 16),
                  decoration: BoxDecoration(
                    color: context.colorScheme.surface,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: HeroIcon(HeroIcons.adjustmentsHorizontal,
                        color: context.colorScheme.onSurface, size: 20),
                    minLeadingWidth: 20,
                    title: localizer.deletePreferences.subtitle2(context,
                        color: context.colorScheme.onSurface),
                    subtitle: localizer.deletePreferencesSubhead.caption(
                        context,
                        emphasis: kEmphasisMedium,
                        color: context.colorScheme.onSurface),
                    trailing: CupertinoCheckbox(
                      value: acceptDataDeletion,
                      activeColor: context.colorScheme.secondary,
                      checkColor: context.colorScheme.onSecondary,
                      onChanged: (value) =>
                          setState(() => acceptDataDeletion = value!),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: context.colorScheme.surface,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: HeroIcon(HeroIcons.users,
                        color: context.colorScheme.onSurface, size: 20),
                    minLeadingWidth: 20,
                    title: localizer.deleteSubscriptions.subtitle2(context,
                        color: context.colorScheme.onSurface),
                    subtitle: localizer.deleteSubscriptionsSubhead.caption(
                        context,
                        emphasis: kEmphasisMedium,
                        color: context.colorScheme.onSurface),
                    trailing: CupertinoCheckbox(
                      value: acceptSubscriptionDeletion,
                      activeColor: context.colorScheme.secondary,
                      checkColor: context.colorScheme.onSecondary,
                      onChanged: (value) =>
                          setState(() => acceptSubscriptionDeletion = value!),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: context.colorScheme.surface,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(TablerIcons.file_description,
                        color: context.colorScheme.onSurface, size: 20),
                    minLeadingWidth: 20,
                    title: localizer.termOfUse.subtitle2(context,
                        color: context.colorScheme.onSurface),
                    subtitle: localizer.termOfUseSubhead.caption(context,
                        emphasis: kEmphasisMedium,
                        color: context.colorScheme.onSurface),
                    trailing: CupertinoCheckbox(
                      value: acceptTerms,
                      activeColor: context.colorScheme.secondary,
                      checkColor: context.colorScheme.onSecondary,
                      onChanged: (value) =>
                          setState(() => acceptTerms = value!),
                    ),
                  ),
                ),
                SizedBox(height: context.height * 0.1),
                AppRoundedButton(
                  text: localizer.signOutAndDeleteAccount,
                  onTap: authBloc.deleteAccount,
                  enabled: !loading &&
                      acceptTerms &&
                      acceptSubscriptionDeletion &&
                      acceptDataDeletion,
                ),
                if (loading) ...{
                  const CircularProgressIndicator.adaptive()
                      .centered()
                      .fillMaxHeight(context, 0.15)
                      .bottom(mediaQuery.padding.bottom + 12),
                } else ...{
                  TextButton(
                    onPressed: navigator.pop,
                    child: localizer.cancel.button(context),
                  ).top(12).bottom(mediaQuery.padding.bottom + 12),
                },
              ],
            ),
          ),
        ),
      ),
    );
  }

  void generateShareableLinkForGroup() async {
    var group = read<CoreBloc>().blocState.group;
    if (group == null) return;
    await Share.share(localizer.inviteToGroupShareMessageSubhead(group.link),
        subject: localizer.inviteToGroupShareMessage(group.name));
  }

  void shareGroupLink(Group group) async =>
      await Share.share(localizer.inviteToGroupShareMessageSubhead(group.link),
          subject: localizer.inviteToGroupShareMessage(group.name));

  String getLocaleNameFromCode(String code) {
    switch (code) {
      case 'fr':
        return localizer.french;
      default:
        return localizer.english;
    }
  }
}

extension ScrollX on ScrollController {
  bool get isAtBottom => offset >= position.maxScrollExtent;

  void scrollToBottom() => SchedulerBinding.instance.addPostFrameCallback((_) {
        animateTo(position.maxScrollExtent,
            duration: kDurationFast, curve: Curves.easeOut);
      });

  void scrollToTop() => SchedulerBinding.instance.addPostFrameCallback((_) {
        animateTo(position.minScrollExtent,
            duration: kDurationFast, curve: Curves.easeOut);
      });
}

extension ColorX on Color {
  // Generate a list of color shades based on the provided hex color
  List<Color> generateColorShades([int numShades = 5]) {
    final Color baseColor = TinyColor.fromColor(this).color;
    final List<Color> shades = [];
    final double step = 1.0 / (numShades - 1);

    for (double i = 0.0; i <= 1.0; i += step) {
      final Color shade =
          TinyColor.fromColor(baseColor).darken((i * 100).toInt()).color;
      shades.add(shade);
    }

    return shades;
  }
}

extension StringX on String {
  bool get isNumeric => num.tryParse(this) != null;
}
