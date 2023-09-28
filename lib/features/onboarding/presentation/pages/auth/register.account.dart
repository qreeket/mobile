import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:heroicons/heroicons.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/constants.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/core/utils/validator.dart';
import 'package:mobile/features/common/presentation/manager/permission_cubit.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:mobile/generated/assets.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:shared_utils/shared_utils.dart';

class RegisterAccountPage extends StatefulWidget {
  const RegisterAccountPage({Key? key}) : super(key: key);

  @override
  State<RegisterAccountPage> createState() => _RegisterAccountPageState();
}

class _RegisterAccountPageState extends State<RegisterAccountPage> {
  final _pageController = PageController(initialPage: 0),
      _formKey = GlobalKey<FormState>(),
      _emailController = TextEditingController(),
      _passwordController = TextEditingController(),
      _phoneNumberController = TextEditingController(),
      _usernameController = TextEditingController(),
      _countryController = TextEditingController(),
      _collegeController = TextEditingController(),
      _authCubit = sl<AuthCubit>(),
      _createAccountCubit = sl<AuthCubit>(),
      _checkEmailBloc = sl<AuthCubit>(),
      _checkPhoneNumberBloc = sl<AuthCubit>(),
      _permissionCubit = sl<PermissionCubit>(),
      _totalPageCount = 4,
      _animations = [
        Assets.animFormValidation,
        Assets.animEmailVerification,
        Assets.animProfilePicturePicker,
        Assets.animPermissions,
      ],
      _avatars = [
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
  String? _selectedAvatarAsset;
  var _currentPage = 0,
      _loading = false,
      _validated = false,
      _phoneNumberAvailable = false,
      _emailAvailable = false,
      _notificationPermission = false,
      _visibleToFriends = true,
      _visibleToOtherColleges = true,
      _biometricPermission = false;
  Country? _kSelectedCountry;
  College? _kSelectedCollege;

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener(
            bloc: _authCubit,
            listener: (context, state) {
              if (!mounted) return;

              setState(() => _loading = state is LoadingState);

              if (state is ErrorState<String>) {
                context.showMessageDialog(state.failure);
              }

              if (state is SuccessState<Empty>) {
                context.showMessageDialog(
                  context.localizer.verificationCodeSentSubhead,
                  showAsError: false,
                  title: context.localizer.verificationCodeSent,
                  onTap: _verifyPhoneNumber,
                );
              }
            },
          ),
          BlocListener(
            bloc: _checkPhoneNumberBloc,
            listener: (context, state) {
              if (!mounted) return;

              setState(() {
                _loading = state is LoadingState;
                _phoneNumberAvailable = state is SuccessState<Empty>;
              });

              if (state is SuccessState<Empty>) {
                _authCubit
                    .verifyPhoneNumber(_phoneNumberController.text.trim());
              }

              if (state is ErrorState<String>) {
                context.showMessageDialog(state.failure);
              }
            },
          ),
          BlocListener(
            bloc: _checkEmailBloc,
            listener: (context, state) {
              if (!mounted) return;

              setState(() {
                _loading = state is LoadingState;
                _emailAvailable = state is SuccessState<Empty>;
              });

              if (state is ErrorState<String>) {
                context.showMessageDialog(state.failure);
              }
            },
          ),
          BlocListener(
            bloc: _createAccountCubit,
            listener: (context, state) {
              if (!mounted) return;

              setState(() => _loading = state is LoadingState);

              if (state is ErrorState<String>) {
                context.showMessageDialog(state.failure);
              }

              if (state is SuccessState<Empty>) {
                context.showMessageDialog(
                  context.localizer.registerSuccessSubhead,
                  showAsError: false,
                  title: context.localizer.registerSuccess,
                  onTap: () => context.navigator.pushNamedAndRemoveUntil(
                      AppRouter.homeRoute, (route) => false),
                );
              }
            },
          ),
          BlocListener(
            bloc: _permissionCubit,
            listener: (context, state) {
              if (!mounted) return;

              if (state is ErrorState<String>) {
                context.showMessageDialog(state.failure);
              }
            },
          ),
        ],
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
                  expandedHeight: context.height * 0.25,
                  collapsedHeight: context.height * 0.1,
                  toolbarHeight: 0,
                  automaticallyImplyLeading: true,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Lottie.asset(_animations[_currentPage])
                              .top(context.mediaQuery.padding.top)
                              .bottom(8),
                        ),
                        context.localizer.gettingToKnowYou.subtitle1(context,
                            weight: FontWeight.w600,
                            color: context.isDarkMode
                                ? context.colorScheme.onSurface
                                : context.colorScheme.onPrimary),
                        context.localizer.gettingToKnowYouSubhead.subtitle2(
                            context,
                            color: context.isDarkMode
                                ? context.colorScheme.onSurface
                                : context.colorScheme.onPrimary,
                            emphasis: kEmphasisMedium),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: context.isDarkMode
                                      ? context.colorScheme.onSurface
                                      : context.colorScheme.onPrimary,
                                ),
                                child: LinearProgressIndicator(
                                  value: (1 + _currentPage) / _totalPageCount,
                                  backgroundColor: context.theme.disabledColor,
                                  minHeight: 6,
                                  valueColor: AlwaysStoppedAnimation(
                                      context.colorScheme.tertiary),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            context.localizer
                                .stepsCount(1 + _currentPage, _totalPageCount)
                                .caption(context,
                                    weight: FontWeight.w600,
                                    color: context.isDarkMode
                                        ? context.colorScheme.onSurface
                                        : context.colorScheme.onPrimary),
                          ],
                        ).top(16),
                      ],
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: Form(
                    key: _formKey,
                    child: PageView.builder(
                      controller: _pageController,
                      scrollBehavior: const MaterialScrollBehavior()
                          .copyWith(overscroll: false),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      onPageChanged: (page) =>
                          setState(() => _currentPage = page),
                      itemBuilder: (context, index) => index == 0
                          ? _buildUsernamePage()
                          : index == 1
                              ? _buildEmailPage()
                              : index == 2
                                  ? _buildProfilePicturePage()
                                  : _buildPermissionsPage(),
                    ),
                  ).horizontal(20).top(24),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (_currentPage > 0) ...{
                AppRoundedButton(
                  text: context.localizer.previous,
                  onTap: () async {
                    await _pageController.previousPage(
                        duration: kDurationMedium, curve: Curves.easeInOut);
                    _validateFormFields();
                  },
                  enabled: !_loading,
                  outlined: true,
                ),
                const SizedBox(width: 24),
              },
              Expanded(
                child: AppRoundedButton(
                  text: _currentPage == 1
                      ? context.localizer.verify
                      : context.localizer.next,
                  onTap: _validateForm,
                  enabled: !_loading && _validated,
                ),
              ),
            ],
          ).bottom(context.mediaQuery.padding.bottom + 12).horizontal(20),
        ),
      );

  void _verifyPhoneNumber() async {
    var successful = await context.navigator.pushNamed(
        AppRouter.phoneVerificationRoute,
        arguments: _phoneNumberController.text.trim());
    if (successful == null) return;
    await _pageController.nextPage(
        duration: kDurationMedium, curve: Curves.easeInOut);
    setState(() => _validated = false);
  }

  void _validateForm() async {
    if (_currentPage == 1) {
      logger.i(
          'Validating email and phone number availability: email? $_emailAvailable, phone number? $_phoneNumberAvailable');
      if (!_emailAvailable) {
        _checkEmailAvailability();
        return;
      }

      if (!_phoneNumberAvailable) _checkPhoneNumberAvailability();
      return;
    }

    if (_currentPage == (_totalPageCount - 1)) {
      if (_selectedAvatarAsset.isNullOrEmpty()) {
        context.showMessageDialog(context.localizer.pleaseSelectProfilePicture);
      } else {
        _showCreateUserPreview();
      }

      return;
    }

    await _pageController.nextPage(
        duration: kDurationMedium, curve: Curves.easeInOut);
    setState(() => _validated = _currentPage == _totalPageCount - 1);
  }

  void _validateFormFields() =>
      setState(() => _validated = _selectedAvatarAsset != null ||
          (_formKey.currentState?.validate() ?? false) ||
          _notificationPermission);

  void _checkEmailAvailability() =>
      _checkEmailBloc.checkEmail(_emailController.text.trim());

  void _checkPhoneNumberAvailability() => _checkPhoneNumberBloc
      .checkPhoneNumber(_phoneNumberController.text.trim());

  void _pickCollege() async {
    if (_kSelectedCountry == null) return;
    _kSelectedCollege =
        await context.showCollegePickerSheet(_kSelectedCountry!.id);
    if (_kSelectedCollege == null) return;
    setState(() => _collegeController.text = _kSelectedCollege?.name ?? '');
    _validateFormFields();
  }

  void _pickCountry() async {
    _kSelectedCountry = await context.showCountryPickerSheet();
    if (_kSelectedCountry == null) return;
    setState(() => _countryController.text = _kSelectedCountry?.name ?? '');
    _validateFormFields();
  }

  /// username, country, college & password
  Widget _buildUsernamePage() => AnimatedListView(
        padding: const EdgeInsets.only(top: 4),
        children: [
          FilledTextField(
            context.localizer.selectCountry,
            prefix: const Icon(TablerIcons.globe),
            hint: context.localizer.selectCountrySubhead,
            capitalization: TextCapitalization.none,
            controller: _countryController,
            validator: Validators.validate,
            readOnly: true,
            onTap: _pickCountry,
            enabled: !_loading,
            onChanged: (_) => _validateFormFields(),
          ),
          FilledTextField(
            context.localizer.username,
            prefix: const Icon(TablerIcons.at),
            hint: context.localizer.usernameHint,
            capitalization: TextCapitalization.words,
            inputAction: TextInputAction.next,
            controller: _usernameController,
            validator: Validators.validate,
            enabled: !_loading,
            onChanged: (_) => _validateFormFields(),
          ),
          FilledTextField(
            context.localizer.selectCollege,
            prefix: const Icon(TablerIcons.school),
            hint: 'e.g. University of Ghana, Legon',
            capitalization: TextCapitalization.none,
            controller: _collegeController,
            validator: Validators.validate,
            readOnly: true,
            onTap: _pickCollege,
            maxLines: 1,
            enabled: !_loading,
            onChanged: (_) => _validateFormFields(),
          ),
          FilledTextField(
            context.localizer.password,
            prefix: const Icon(TablerIcons.shield_lock),
            hint: context.localizer.passwordHint,
            type: AppTextFieldType.password,
            controller: _passwordController,
            validator: Validators.validatePassword,
            enabled: !_loading,
            onChanged: (_) => _validateFormFields(),
          ),
        ],
      );

  /// email & phone
  Widget _buildEmailPage() => AnimatedListView(
        padding: const EdgeInsets.only(top: 4),
        children: [
          FilledTextField(
            context.localizer.email,
            prefix: const Icon(Icons.mail_lock),
            type: AppTextFieldType.email,
            hint: context.localizer.emailHint,
            controller: _emailController,
            validator: Validators.validateEmail,
            enabled: !_loading,
            onChanged: (_) => _validateFormFields(),
          ),
          if (_emailAvailable) ...{
            FilledTextField(
              context.localizer.phoneNumber,
              prefix: const Icon(Icons.phone),
              hint: context.localizer.phoneNumberHint,
              type: AppTextFieldType.phone,
              controller: _phoneNumberController,
              validator: Validators.validatePhone,
              enabled: !_loading,
              onChanged: (_) => _validateFormFields(),
            ),
          },
        ],
      );

  /// profile picture
  Widget _buildProfilePicturePage() => AnimatedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          context.localizer.tapToSelectProfilePicture.subtitle1(context),
          context.localizer.tapToSelectProfilePictureSubhead
              .caption(context, emphasis: kEmphasisMedium),
          AnimationLimiter(
            child: GridView.builder(
              padding: const EdgeInsets.only(top: 20, bottom: 16),
              shrinkWrap: true,
              semanticChildCount: _avatars.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.85,
                  crossAxisCount: 4,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 8),
              itemCount: _avatars.length,
              itemBuilder: (context, index) =>
                  AnimationConfiguration.staggeredGrid(
                position: index,
                duration: kDurationMedium,
                columnCount: 4,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: GestureDetector(
                      onTap: () {
                        setState(() => _selectedAvatarAsset = _avatars[index]);
                        _validateFormFields();
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: _selectedAvatarAsset == _avatars[index]
                              ? context.colorScheme.secondary
                              : null,
                          border: Border.all(
                              color: context.theme.disabledColor
                                  .withOpacity(kEmphasisMedium)),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(_avatars[index])),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ).fillMaxWidth(context).fillMaxHeight(context, 0.4),
          ),
        ],
      );

  /// permissions
  Widget _buildPermissionsPage() => AnimatedColumn(
        children: [
          ListTile(
            title: context.localizer.notificationPermission.subtitle2(context),
            subtitle: context.localizer.notificationPermissionSubhead
                .caption(context, emphasis: kEmphasisMedium),
            leading: const Icon(TablerIcons.notification),
            contentPadding: EdgeInsets.zero,
            trailing: Switch(
              activeColor: context.colorScheme.secondary,
              value: _notificationPermission,
              onChanged: (enabled) {
                setState(() => _notificationPermission = enabled);
                _validateFormFields();
                _permissionCubit.toggleNotifications(enabled);
              },
            ),
          ),
          ListTile(
            title: context.localizer.visibleToFriends.subtitle2(context),
            subtitle: context.localizer.visibleToFriendsSubhead
                .caption(context, emphasis: kEmphasisMedium),
            leading: const HeroIcon(HeroIcons.users),
            contentPadding: EdgeInsets.zero,
            trailing: Switch(
              activeColor: context.colorScheme.secondary,
              value: _visibleToFriends,
              onChanged: (enabled) =>
                  setState(() => _visibleToFriends = enabled),
            ),
          ),
          ListTile(
            title: context.localizer.visibleToOtherColleges.subtitle2(context),
            subtitle: context.localizer.visibleToOtherCollegesSubhead
                .caption(context, emphasis: kEmphasisMedium),
            leading: const HeroIcon(HeroIcons.userGroup),
            contentPadding: EdgeInsets.zero,
            trailing: Switch(
              activeColor: context.colorScheme.secondary,
              value: _visibleToOtherColleges,
              onChanged: (enabled) =>
                  setState(() => _visibleToOtherColleges = enabled),
            ),
          ),
          ListTile(
            title: context.localizer.biometricPermission.subtitle2(context),
            subtitle: context.localizer.biometricPermissionSubhead
                .caption(context, emphasis: kEmphasisMedium),
            leading: Icon(
                Platform.isIOS ? TablerIcons.face_id : TablerIcons.fingerprint),
            contentPadding: EdgeInsets.zero,
            trailing: Switch(
              activeColor: context.colorScheme.secondary,
              value: _biometricPermission,
              onChanged: (enabled) {
                setState(() => _biometricPermission = enabled);
                _validateFormFields();
                _permissionCubit.toggleBiometrics(enabled);
              },
            ),
          ),
        ],
      );

  void _showCreateUserPreview() async {
    // get user data
    final username = _usernameController.text.trim(),
        phone = _phoneNumberController.text.trim(),
        email = _emailController.text.trim(),
        password = _passwordController.text.trim();

    var accepted = await showBarModalBottomSheet(
      context: context,
      backgroundColor: context.colorScheme.background,
      builder: (context) => StatefulBuilder(
          builder: (context, setState) => ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(
                    bottom: context.mediaQuery.padding.bottom + 4),
                children: [
                  context.localizer.profilePreview
                      .subtitle1(context, alignment: TextAlign.center)
                      .top(16),
                  context.localizer.profilePreviewSubhead
                      .caption(context,
                          alignment: TextAlign.center,
                          emphasis: kEmphasisMedium)
                      .bottom(16),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        height: context.height * 0.12,
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: context.width,
                          decoration: BoxDecoration(
                            color: context.isDarkMode
                                ? context.colorScheme.surface
                                : null,
                            gradient: context.isDarkMode
                                ? null
                                : LinearGradient(
                                    colors: context.colorScheme.primary
                                        .generateColorShades(),
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                          ),
                          alignment: Alignment.bottomRight,
                          padding: const EdgeInsets.only(right: 20, bottom: 20),
                          child: AnimatedColumn(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              username.subtitle1(context,
                                  color: context.isDarkMode
                                      ? context.colorScheme.onSurface
                                      : context.colorScheme.onPrimary),
                              email.subtitle2(context,
                                  color: context.isDarkMode
                                      ? context.colorScheme.onSurface
                                      : context.colorScheme.onPrimary,
                                  emphasis: kEmphasisMedium),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: context.height * 0.01,
                        left: 20,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.colorScheme.surface,
                            border: Border.all(
                                width: 3.5,
                                color: context.colorScheme.background),
                          ),
                          child: _selectedAvatarAsset.avatar(
                              size: context.height * 0.1,
                              fromAsset: true,
                              circular: true),
                        ),
                      ),
                    ],
                  ).fillMaxHeight(context, 0.16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildActionButton(
                          context.localizer.message, TablerIcons.message_2),
                      _buildActionButton(context.localizer.startVoiceCall,
                          TablerIcons.phone_calling),
                      _buildActionButton(
                          context.localizer.startVideoCall, TablerIcons.video),
                    ],
                  ).vertical(8),
                  Container(
                    width: context.width,
                    margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                      color: context.colorScheme.surface,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        context.localizer.connections
                            .toUpperCase()
                            .caption(context,
                                emphasis: kEmphasisMedium,
                                weight: FontWeight.bold)
                            .left(16)
                            .bottom(8),
                        Container(
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceVariant,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(
                            title: context.localizer.inviteToConnect
                                .subtitle2(context),
                            subtitle: context.localizer
                                .inviteToConnectSubhead(username)
                                .caption(context, emphasis: kEmphasisMedium),
                            trailing: const Icon(TablerIcons.heart_handshake),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceVariant,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(
                            title: context.localizer.inviteToGroup
                                .subtitle2(context),
                            subtitle: context.localizer
                                .inviteToGroupSubhead(username, '#COMPSSA\'18')
                                .caption(context, emphasis: kEmphasisMedium),
                            trailing:
                                const Icon(Icons.supervisor_account_outlined),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppRoundedButton(
                          text: context.localizer.saveContinue,
                          icon: TablerIcons.arrow_right,
                          iconLocation: IconLocation.end,
                          onTap: () => context.navigator.pop(true))
                      .centered()
                      .top(40),
                ],
              )),
    );
    if (accepted is bool && accepted) {
      _createAccountCubit.createUser(
        username: username,
        phone: phone,
        email: email,
        password: password,
        country: _kSelectedCountry!.id,
        college: _kSelectedCollege!.id,
        avatar: _selectedAvatarAsset!,
      );
    }
  }

  Widget _buildActionButton(String label, IconData icon,
          [VoidCallback? onPressed]) =>
      GestureDetector(
        onTap: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: context.colorScheme.onBackground),
            label.caption(context).top(8),
          ],
        ),
      );
}
