part of '../login.dart';

class LoginWithPhoneNumberPage extends StatefulWidget {
  final Country? country;

  const LoginWithPhoneNumberPage({Key? key, this.country}) : super(key: key);

  @override
  State<LoginWithPhoneNumberPage> createState() =>
      _LoginWithPhoneNumberPageState();
}

class _LoginWithPhoneNumberPageState extends State<LoginWithPhoneNumberPage> {
  final _formKey = GlobalKey<FormState>(),
      _phoneNumberController = TextEditingController(),
      _passwordController = TextEditingController();
  late final _authCubit = context.read<AuthCubit>();
  var _loading = false, _validated = false;

  @override
  Widget build(BuildContext context) => BlocListener(
        bloc: _authCubit,
        listener: (context, state) {
          if (!mounted) return;

          setState(() => _loading = state is LoadingState);

          if (state is SuccessState<Empty>) {
            context.navigator
                .pushNamedAndRemoveUntil(AppRouter.homeRoute, (route) => false);
          }
        },
        child: Form(
          key: _formKey,
          child: AnimatedColumn(
            children: [
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
              AppRoundedButton(
                text: context.localizer.continueText,
                onTap: _validateForm,
                layoutSize: LayoutSize.matchParent,
                enabled: !_loading && _validated,
              ).top(8),
            ],
          ),
        ),
      ).horizontal(24).bottom(16);

  void _validateForm() async {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      if (widget.country == null) {
        context.showMessageDialog(context.localizer.selectCountry);
        return;
      }

      final phoneNumber = _phoneNumberController.text.trim(),
          password = _passwordController.text.trim();
      _authCubit.signInWithPhoneNumberAndPassword(
          countryId: widget.country!.id,
          phoneNumber: phoneNumber,
          password: password);
    }
  }

  void _validateFormFields() =>
      setState(() => _validated = _formKey.currentState!.validate());
}
