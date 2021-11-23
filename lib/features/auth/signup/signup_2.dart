import 'package:flutter/material.dart';
import 'package:xafee/core/models/user_model.dart';
import 'package:xafee/core/navigation/app_navigation.dart';
import 'package:xafee/core/navigation/route.dart';
import 'package:xafee/core/res/components/validators.dart';
import 'package:xafee/features/auth/widgets/signup_widget.dart';
import 'package:xafee/locator.dart';

class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({
    Key key,
  }) : super(key: key);

  @override
  _SignUpScreen2State createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  TextEditingController _emailEditingController;

  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _emailEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var user = ModalRoute.of(context).settings.arguments as UserModel;
    return SignUpScreenWidget(
      title: 'What’s your email?',
      hintText: 'Enter your email address',
      buttonTitle: 'Next',
      controller: _emailEditingController,
      validator: (value) {
        return XafeFieldValidator.emailValidator(value);
      },
      onPressed: () => locator<NavigationService>().navigateTo(
        signupLayoutView3,
        arguments: UserModel(
          name: user.name,
          email: _emailEditingController.text,
        ),
      ),
    );
  }
}
