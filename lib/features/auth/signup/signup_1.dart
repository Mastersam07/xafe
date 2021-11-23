import 'package:flutter/material.dart';
import 'package:xafee/core/models/user_model.dart';
import 'package:xafee/core/navigation/app_navigation.dart';
import 'package:xafee/core/navigation/route.dart';
import 'package:xafee/core/res/components/validators.dart';
import 'package:xafee/features/auth/widgets/signup_widget.dart';

import '../../../locator.dart';

class SignUpScreen1 extends StatefulWidget {
  const SignUpScreen1({Key key}) : super(key: key);

  @override
  _SignUpScreen1State createState() => _SignUpScreen1State();
}

class _SignUpScreen1State extends State<SignUpScreen1> {
  TextEditingController _nameEditingController;

  @override
  void initState() {
    super.initState();
    _nameEditingController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _nameEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SignUpScreenWidget(
      title: 'What’s your name?',
      hintText: 'Enter your first name and last name',
      buttonTitle: 'Next',
      validator: (value) {
        return XafeFieldValidator.defaultValidator(value);
      },
      controller: _nameEditingController,
      onPressed: () => locator<NavigationService>().navigateTo(
        signupLayoutView2,
        arguments: UserModel(
          name: _nameEditingController.text,
        ),
      ),
    );
  }
}
