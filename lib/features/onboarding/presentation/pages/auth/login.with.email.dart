part of '../login.dart';

class LoginWithEmailAddressPage extends StatefulWidget {
  final Country? country;

  const LoginWithEmailAddressPage({Key? key, this.country}) : super(key: key);

  @override
  State<LoginWithEmailAddressPage> createState() =>
      _LoginWithEmailAddressPageState();
}

class _LoginWithEmailAddressPageState extends State<LoginWithEmailAddressPage> {
  final _formKey = GlobalKey<FormState>(),
      _emailController = TextEditingController(),
      _passwordController = TextEditingController();
  late final _authCubit = context.read<AuthCubit>();
  var _loading = false, _validated = false;

  @override
  Widget build(BuildContext context) => BlocListener(
        bloc: _authCubit,
        listener: (context, state) {
          if (!mounted) return;

          setState(() => _loading = state is LoadingState);

          if (state is SuccessState<String>) {
            context.showMessageDialog(
              context.localizer.loginSuccess,
              showAsError: false,
              title: state.data,
              onTap: () => context.navigator
                  .pushNamedAndRemoveUntil(AppRouter.homeRoute, (_) => false),
            );
          }
        },
        child: Form(
          key: _formKey,
          child: AnimatedColumn(
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

      final email = _emailController.text.trim(),
          password = _passwordController.text.trim();
      _authCubit.signInWithEmailAndPassword(
          countryId: widget.country!.id, email: email, password: password);
    }
  }

  void _validateFormFields() =>
      setState(() => _validated = _formKey.currentState!.validate());
}
