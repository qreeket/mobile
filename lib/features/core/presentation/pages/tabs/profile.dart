part of '../home.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final _authBloc = sl<AuthCubit>(), _updateAccountBloc = sl<AuthCubit>();
  late final _permissionCubit = context.read<PermissionCubit>();
  Account? _currentUser;
  College? _college;
  var _loading = false,
      _visibleToFriends = true,
      _biometricPermission = false,
      _notificationPermission = false;

  @override
  void initState() {
    super.initState();
    _authBloc.currentUser();
    _initializePermissions();
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener(
            bloc: _authBloc,
            listener: (context, state) {
              if (!mounted) return;

              setState(() => _loading = state is LoadingState);

              if (state is ErrorState<String>) {
                context.showMessageDialog(state.failure);
              }

              if (state is SuccessState<Account>) {
                _visibleToFriends = state.data.isVisible;
                setState(() => _currentUser = state.data);
                _authBloc.getCollege(state.data.collegeId);
              }

              if (state is SuccessState<Empty>) {
                context.navigator.pushNamedAndRemoveUntil(
                    AppRouter.welcomeRoute, (route) => false);
              }

              if (state is SuccessState<College>) {
                setState(() => _college = state.data);
              }
            },
          ),
          BlocListener(
            bloc: _updateAccountBloc,
            listener: (context, state) {
              if (!mounted) return;

              setState(() => _loading = state is LoadingState);

              if (state is SuccessState<Account>) {
                setState(() => _currentUser = state.data);
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
        child: LoadingIndicator(
          lottieAnimResource: Assets.animLoading,
          isLoading: _loading,
          loadingAnimIsAsset: true,
          child: BlocBuilder(
            bloc: _authBloc,
            builder: (context, state) {
              if (state is ErrorState<String>) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EmptyContentPlaceholder(
                      icon: TablerIcons.shield_lock,
                      title: context.localizer.signUpForAccount,
                      subtitle: context.localizer.appDescShort,
                    ),
                    SizedBox(height: context.height * 0.05),
                    AppRoundedButton(
                        text: context.localizer.joinCommunity,
                        onTap: () => context.navigator
                            .pushNamed(AppRouter.welcomeRoute)),
                  ],
                );
              }

              if (_currentUser == null) return const SizedBox.shrink();

              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    systemOverlayStyle: _college == null
                        ? SystemUiOverlayStyle.light
                        : SystemUiOverlayStyle.dark,
                    expandedHeight:
                        context.height * 0.2 + context.mediaQuery.padding.top,
                    collapsedHeight:
                        context.height * 0.2 + context.mediaQuery.padding.top,
                    flexibleSpace: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // image with university banner
                        Positioned.fill(
                          bottom: context.height * 0.1,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    image: _college == null ||
                                            _college!.bannerUrl.isNullOrEmpty()
                                        ? null
                                        : DecorationImage(
                                            image: CachedNetworkImageProvider(
                                                _college!.bannerUrl),
                                            fit: BoxFit.cover,
                                            alignment: Alignment.center),
                                    color: context.isDarkMode
                                        ? context.colorScheme.surfaceVariant
                                        : null,
                                    border: Border.fromBorderSide(BorderSide(
                                        color: context.isDarkMode
                                            ? context.colorScheme.surfaceVariant
                                            : context.colorScheme.surface,
                                        width: 1)),
                                    gradient: context.isDarkMode
                                        ? null
                                        : LinearGradient(
                                            colors: context.colorScheme.primary
                                                .generateColorShades(),
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),
                                  ),
                                ),
                              ),
                              if (_college != null) ...{
                                Positioned(
                                  bottom: 20,
                                  right: 20,
                                  child: DottedBorder(
                                    color: (context.isDarkMode
                                            ? context.colorScheme.onSurface
                                            : context.colorScheme.onPrimary)
                                        .withOpacity(kEmphasisLow),
                                    borderType: BorderType.Circle,
                                    padding: const EdgeInsets.all(6),
                                    child: _college!.logoUrl.avatar(
                                        size: context.width * 0.1,
                                        circular: true),
                                  ),
                                ),
                              },
                            ],
                          ),
                        ),

                        // user avatar
                        Positioned(
                          top: context.height * 0.12 +
                              context.mediaQuery.padding.top,
                          left: 20,
                          child: DottedBorder(
                            color: (context.isDarkMode
                                    ? context.colorScheme.onSurface
                                    : context.colorScheme.onPrimary)
                                .withOpacity(kEmphasisLow),
                            borderType: BorderType.Circle,
                            dashPattern: const [6, 3, 2, 3],
                            padding: const EdgeInsets.all(6),
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: context.colorScheme.background,
                                border: Border.all(
                                    color: context.colorScheme.background,
                                    width: 3),
                              ),
                              child: ClipOval(
                                child: _currentUser!.avatarUrl
                                    .avatar(size: context.height * 0.1),
                              ),
                            ),
                          ),
                        ),

                        // username and email
                        Positioned(
                          right: 20,
                          top: context.height * 0.18 +
                              context.mediaQuery.padding.top,
                          child: AnimatedColumn(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _currentUser!.username.subtitle1(context,
                                  color: context.colorScheme.onBackground,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  weight: FontWeight.w600),
                              _currentUser!.email.subtitle2(context,
                                  color: context.colorScheme.onBackground,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  emphasis: kEmphasisMedium),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        _buildListTile(
                          icon: TablerIcons.user_circle,
                          label: context.localizer.setVisibility,
                          onTap: () {}, // do nothing,
                          trailing: Switch(
                            value: _visibleToFriends,
                            onChanged: (value) {
                              setState(() => _visibleToFriends = value);
                              _currentUser?.isVisible = value;
                              _updateAccountBloc.updateAccount(_currentUser!);
                            },
                          ),
                        ),

                        /// general
                        _buildSectionHeader(context.localizer.generalSettings),
                        _buildListTile(
                          icon: TablerIcons.notification,
                          label: context.localizer.notificationPermission,
                          onTap: () {}, // do nothing,
                          trailing: Switch(
                            value: _notificationPermission,
                            onChanged: (enabled) {
                              setState(() => _notificationPermission = enabled);
                              _permissionCubit.toggleNotifications(enabled);
                            },
                          ),
                        ),
                        _buildListTile(
                          icon: Platform.isIOS
                              ? TablerIcons.face_id
                              : TablerIcons.fingerprint,
                          label: context.localizer.biometricPermission,
                          onTap: () {}, // do nothing,
                          trailing: Switch(
                            value: _biometricPermission,
                            onChanged: (enabled) {
                              setState(() => _biometricPermission = enabled);
                              _permissionCubit.toggleBiometrics(enabled);
                            },
                          ),
                        ),
                        _buildListTile(
                          icon: TablerIcons.premium_rights,
                          label: _currentUser!.userType == UserType.standard
                              ? context.localizer.goPremium
                              : context.localizer.manageSubscription,
                          onTap: _purchasePremiumAccount,
                        ),

                        /// themes
                        _buildSectionHeader(context.localizer.appSettings),
                        _buildListTile(
                          icon: Icons.palette_outlined,
                          label: context.localizer.appearance,
                          // TODO -> add action
                          onTap: context.showFeatureUnderDevSheet,
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              context.localizer.system.bodyText2(context,
                                  color: context.colorScheme.onSurface),
                              const SizedBox(width: 8),
                              Icon(TablerIcons.chevron_right,
                                      color: context.colorScheme.onSurface)
                                  .bottom(4),
                            ],
                          ),
                        ),
                        _buildListTile(
                          icon: TablerIcons.language,
                          label: context.localizer.language,
                          // TODO -> add action
                          onTap: context.showFeatureUnderDevSheet,
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              context
                                  .getLocaleNameFromCode(
                                      _currentUser!.languageId)
                                  .bodyText2(context,
                                      color: context.colorScheme.onSurface),
                              const SizedBox(width: 8),
                              Icon(TablerIcons.chevron_right,
                                      color: context.colorScheme.onSurface)
                                  .bottom(4),
                            ],
                          ),
                        ),

                        /// legal
                        _buildSectionHeader(context.localizer.legal),
                        _buildListTile(
                          icon: TablerIcons.signature,
                          label: context.localizer.viewPrivacyPolicy,
                          onTap: openPrivacyPolicy,
                        ),
                        _buildListTile(
                          icon: TablerIcons.file_description,
                          label: context.localizer.termOfUse,
                          onTap: openTermsOfUse,
                        ),

                        /// account management
                        _buildSectionHeader(
                            context.localizer.accountManagement),
                        _buildListTile(
                          icon: TablerIcons.shield_lock,
                          label: context.localizer.resetPassword,
                          onTap: () => context.navigator
                              .pushNamed(AppRouter.resetPasswordRoute),
                        ),
                        _buildListTile(
                          icon: TablerIcons.help,
                          label: context.localizer.needHelp,
                          onTap: openWhatsappChat,
                        ),
                        _buildListTile(
                          icon: TablerIcons.door_exit,
                          label: context.localizer.signOut,
                          color: context.colorScheme.errorContainer,
                          onTap: _authBloc.signOut,
                        ),
                        _buildListTile(
                          icon: TablerIcons.user_exclamation,
                          label: context.localizer.deleteAccount,
                          color: context.colorScheme.errorContainer,
                          onTap: () async {
                            var successful = await context
                                .showDeleteAccountSheet(_currentUser!);
                            if (successful is bool && successful) {
                              context.navigator.pushNamedAndRemoveUntil(
                                  AppRouter.welcomeRoute, (route) => false);
                            }
                          },
                        ),
                      ],
                    ).vertical(16),
                  ),
                  SliverToBoxAdapter(
                    child: GestureDetector(
                      onTap: openTwitterProfile,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            20, 0, 20, context.mediaQuery.padding.bottom + 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            context.localizer.appDevTeam.caption(context,
                                emphasis: kEmphasisLow,
                                alignment: TextAlign.center,
                                color: context.colorScheme.onSurface),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      );

  // actions section header
  Widget _buildSectionHeader(String label) => Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 0, 12),
        child: label.toUpperCase().caption(context,
            weight: FontWeight.bold, emphasis: kEmphasisMedium),
      ).align(Alignment.centerLeft);

  // action tile builder
  Widget _buildListTile({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    Widget? trailing,
    Color? color,
  }) =>
      DecoratedBox(
        decoration: BoxDecoration(color: context.colorScheme.surface),
        child: ListTile(
          leading: Icon(icon, color: color ?? context.colorScheme.onSurface),
          title: label.bodyText2(context,
              color: color ?? context.colorScheme.onSurface),
          trailing: trailing ??
              Icon(TablerIcons.chevron_right,
                  color: color ?? context.colorScheme.onSurface),
          onTap: onTap,
        ),
      ).bottom(8);

  void _initializePermissions() async {
    _notificationPermission = await _permissionCubit.isNotificationsEnabled;
    _biometricPermission = await _permissionCubit.isBiometricEnabled;
    if (mounted) setState(() {});
  }

  void _purchasePremiumAccount() async {
    if (_currentUser != null && _currentUser!.userType == UserType.standard) {
      var successful = await context.showPremiumAccountSheet();
      if (successful is bool && successful) _authBloc.signOut();
    } else {
      context.navigator.pushNamed(AppRouter.manageSubscriptionRoute);
    }
  }
}
