import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/core/utils/validator.dart';
import 'package:mobile/features/common/presentation/widgets/tab.container.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:mobile/generated/assets.dart';
import 'package:shared_utils/shared_utils.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _authBloc = AuthCubit(),
      _resetPasswordBloc = AuthCubit(),
      _emailFormKey = GlobalKey<FormState>(),
      _phoneFormKey = GlobalKey<FormState>(),
      _passwordResetFormKey = GlobalKey<FormState>(),
      _passwordController = TextEditingController(),
      _confirmPasswordController = TextEditingController(),
      _emailController = TextEditingController(),
      _phoneController = TextEditingController();
  var _loading = false,
      _validated = false,
      _showEnterNewPasswordUI = false,
      _currentIndex = 0,
      _resetToken = '';

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

              if (state is SuccessState<String>) {
                setState(() => _resetToken = state.data);
                context.showMessageDialog(
                    context.localizer.verificationCodeSentSubhead,
                    showAsError: false,
                    title: context.localizer.verificationCodeSent,
                    onTap: _verifyAccount);
              }
            },
          ),
          BlocListener(
            bloc: _resetPasswordBloc,
            listener: (context, state) {
              if (!mounted) return;

              setState(() => _loading = state is LoadingState);

              if (state is ErrorState<String>) {
                context.showMessageDialog(state.failure);
              }

              if (state is SuccessState<String>) {
                context.showMessageDialog(context.localizer.resetPasswordSuccessSubhead,
                    showAsError: false,
                    title: context.localizer.resetPasswordSuccess,
                    onTap: context.navigator.pop);
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
                  expandedHeight:
                      context.height * (_showEnterNewPasswordUI ? 0.15 : 0.22),
                  collapsedHeight: context.height * 0.18,
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
                        (_showEnterNewPasswordUI
                                ? context.localizer.resetPassword
                                : context.localizer.resetPasswordRequest)
                            .h5(context,
                                weight: FontWeight.w600,
                                color: context.isDarkMode
                                    ? context.colorScheme.onSurface
                                    : context.colorScheme.onPrimary),
                        (_showEnterNewPasswordUI
                                ? context.localizer.resetPasswordSubhead
                                : context.localizer.resetPasswordRequestSubhead)
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
                SliverPadding(
                  padding: EdgeInsets.only(
                      bottom: context.mediaQuery.viewPadding.bottom + 12,
                      left: 20,
                      right: 20,
                      top: 24),
                  sliver: _showEnterNewPasswordUI
                      ? SliverToBoxAdapter(
                          child: Form(
                            key: _passwordResetFormKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FilledTextField(
                                  context.localizer.password,
                                  prefix: const Icon(TablerIcons.shield_lock),
                                  hint: context.localizer.passwordHint,
                                  type: AppTextFieldType.password,
                                  controller: _passwordController,
                                  validator: Validators.validatePassword,
                                  enabled: !_loading,
                                  autofocus: true,
                                  onChanged: (_) => _validateFormFields(),
                                ),
                                FilledTextField(
                                  context.localizer.confirmPassword,
                                  prefix: const Icon(TablerIcons.shield_lock),
                                  hint: context.localizer.passwordHint,
                                  type: AppTextFieldType.password,
                                  controller: _confirmPasswordController,
                                  validator: (input) =>
                                      Validators.validatePassword(
                                          input, _passwordController.text),
                                  enabled: !_loading,
                                  onChanged: (_) => _validateFormFields(),
                                ),
                                AppRoundedButton(
                                  text: context.localizer.continueText,
                                  onTap: _resetPassword,
                                  layoutSize: LayoutSize.matchParent,
                                  enabled: !_loading && _validated,
                                ).top(8),
                              ],
                            ),
                          ),
                        )
                      : SliverToBoxAdapter(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              PilledTabContainer(
                                selectedIndex: _currentIndex,
                                onTabSelected: (index) =>
                                    setState(() => _currentIndex = index),
                                labels: [
                                  context.localizer.email,
                                  context.localizer.phone,
                                ],
                              ).bottom(24),
                              IndexedStack(
                                index: _currentIndex,
                                children: [
                                  Form(
                                    key: _emailFormKey,
                                    child: FilledTextField(
                                      context.localizer.email,
                                      prefix: const Icon(Icons.mail_lock),
                                      type: AppTextFieldType.email,
                                      hint: context.localizer.emailHint,
                                      controller: _emailController,
                                      validator: Validators.validateEmail,
                                      enabled: !_loading,
                                      autofocus: true,
                                    ),
                                  ),
                                  Form(
                                    key: _phoneFormKey,
                                    child: FilledTextField(
                                      context.localizer.phoneNumber,
                                      prefix: const Icon(Icons.phone),
                                      hint: context.localizer.phoneNumberHint,
                                      type: AppTextFieldType.phone,
                                      controller: _phoneController,
                                      validator: Validators.validatePhone,
                                      enabled: !_loading,
                                      autofocus: true,
                                    ),
                                  ),
                                ],
                              ),
                              AppRoundedButton(
                                text: context.localizer.continueText,
                                onTap: _validateAndSendPasswordReset,
                                layoutSize: LayoutSize.matchParent,
                                enabled: !_loading,
                              ).top(8),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      );

  void _validateAndSendPasswordReset() {
    switch (_currentIndex) {
      case 0:
        if (_emailFormKey.currentState != null &&
            _emailFormKey.currentState!.validate()) {
          _authBloc.requestPasswordReset(_emailController.text.trim());
        }
        break;
      case 1:
        if (_phoneFormKey.currentState != null &&
            _phoneFormKey.currentState!.validate()) {
          _authBloc.requestPasswordReset(_phoneController.text.trim());
        }
        break;
    }
  }

  void _verifyAccount() async {
    var payload = _currentIndex == 0
        ? _emailController.text.trim()
        : _phoneController.text.trim();
    var successful = await context.navigator
        .pushNamed(AppRouter.phoneVerificationRoute, arguments: payload);
    setState(() => _showEnterNewPasswordUI = successful is bool && successful);
  }

  void _validateFormFields() => setState(
      () => _validated = _passwordResetFormKey.currentState!.validate());

  void _resetPassword() async {
    if (_passwordResetFormKey.currentState != null &&
        _passwordResetFormKey.currentState!.validate()) {
      var payload = _currentIndex == 0
          ? _emailController.text.trim()
          : _phoneController.text.trim();
      _resetPasswordBloc.resetPassword(
          emailOrPhoneNumber: payload,
          password: _passwordController.text.trim(),
          token: _resetToken);
    }
  }
}
