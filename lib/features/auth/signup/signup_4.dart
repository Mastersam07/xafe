import 'package:flutter/material.dart';
import 'package:xafee/features/auth/widgets/signup_widget.dart';

class SignUpScreen4 extends StatefulWidget {
  const SignUpScreen4({
    Key key,
  }) : super(key: key);
  @override
  _SignUpScreen4State createState() => _SignUpScreen4State();
}

class _SignUpScreen4State extends State<SignUpScreen4> {
  TextEditingController _passwordEditingController;
  final ValueNotifier<bool> _isObscure = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    _passwordEditingController = TextEditingController(
      text: '',
    );
  }

  @override
  void dispose() {
    _passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var user = ModalRoute.of(context).settings.arguments as UserModel;
    return ValueListenableBuilder(
      valueListenable: _isObscure,
      builder: (_, value, __) {
        return SignUpScreenWidget(
          title: 'Add a Password',
          hintText: 'Enter password',
          isPasswordScreen: true,
          showPasswordText: value ? 'show password' : 'hide password',
          obscureText: value,
          controller: _passwordEditingController,
          buttonTitle: 'Next',
          // isBusy: model.isBusy,
          onShowPasswordPressed: () {
            _isObscure.value = !_isObscure.value;
          },
          onPressed: () {},
        );
      },
    );
  }
}
