import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/core/utils/extensions.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:mobile/generated/assets.dart';
import 'package:pinput/pinput.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:shared_utils/shared_utils.dart';

class PhoneNumberVerificationPage extends StatefulWidget {
  final String phoneNumber;

  const PhoneNumberVerificationPage({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  State<PhoneNumberVerificationPage> createState() =>
      _PhoneNumberVerificationPageState();
}

class _PhoneNumberVerificationPageState
    extends State<PhoneNumberVerificationPage> {
  var _loading = false;
  final _authCubit = AuthCubit(),
      _formKey = GlobalKey<FormState>(),
      _pinController = TextEditingController();

  PinTheme get _pinTheme => PinTheme(
        width: context.width * 0.15,
        height: context.width * 0.15,
        textStyle: context.textTheme.titleMedium
            ?.copyWith(color: context.colorScheme.onSurface),
        decoration: BoxDecoration(
            color: context.colorScheme.surfaceVariant, shape: BoxShape.circle),
      );

  Widget get _cursor => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 12,
          height: 1,
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: context.colorScheme.onSurface,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) => BlocListener(
        bloc: _authCubit,
        listener: (context, state) {
          if (!mounted) return;

          setState(() => _loading = state is LoadingState);

          if (state is ErrorState<String>) {
            context.showMessageDialog(state.failure);
          }

          if (state is SuccessState<Empty>) context.navigator.pop(true);
        },
        child: Scaffold(
          body: LoadingIndicator(
            lottieAnimResource: Assets.animLoading,
            loadingAnimIsAsset: true,
            isLoading: _loading,
            child: Form(
              key: _formKey,
              child: CustomScrollView(
                shrinkWrap: true,
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    floating: false,
                    systemOverlayStyle: SystemUiOverlayStyle.light,
                    expandedHeight: context.height * 0.25,
                    collapsedHeight: context.height * 0.23,
                    toolbarHeight: 0,
                    automaticallyImplyLeading: true,
                    flexibleSpace: Container(
                      padding: const EdgeInsets.only(
                          left: 20, bottom: 20, right: 20),
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
                            child: Lottie.asset(Assets.animOtpVerification)
                                .top(context.mediaQuery.padding.top)
                                .bottom(8),
                          ),
                          context.localizer.otpVerification.subtitle1(context,
                              weight: FontWeight.w600,
                              color: context.isDarkMode
                                  ? context.colorScheme.onSurface
                                  : context.colorScheme.onPrimary),
                          context.localizer
                              .otpVerificationSubhead(widget.phoneNumber)
                              .subtitle2(context,
                                  color: context.isDarkMode
                                      ? context.colorScheme.onSurface
                                      : context.colorScheme.onPrimary,
                                  alignment: TextAlign.center,
                                  emphasis: kEmphasisMedium),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Pinput(
                      length: 6,
                      controller: _pinController,
                      defaultPinTheme: _pinTheme,
                      autofocus: true,
                      separator: const SizedBox(width: 16),
                      focusedPinTheme: _pinTheme.copyWith(
                        decoration: BoxDecoration(
                          color: context.colorScheme.surface,
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                              color:
                                  Color.fromRGBO(0, 0, 0, 0.05999999865889549),
                              offset: Offset(0, 3),
                              blurRadius: 16,
                            )
                          ],
                        ),
                      ),
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsUserConsentApi,
                      onCompleted: (value) {
                        if (value.length == 6 && value.isNumeric) {
                          _authCubit.verifyOTPForPhoneNumber(
                              phoneNumber: widget.phoneNumber, otp: value);
                        }
                      },
                      showCursor: true,
                      cursor: _cursor,
                    ).horizontal(24).top(24),
                  ),
                  SliverToBoxAdapter(
                    child: AppRoundedButton(
                      text: context.localizer.verify,
                      layoutSize: LayoutSize.standard,
                      onTap: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          var value = _pinController.text;
                          if (value.length == 6 && value.isNumeric) {
                            _authCubit.verifyOTPForPhoneNumber(
                                phoneNumber: widget.phoneNumber, otp: value);
                          }
                        }
                      },
                    ).centered().top(24),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
