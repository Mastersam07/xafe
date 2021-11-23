import 'package:flutter/material.dart';
import 'package:xafee/core/models/user_model.dart';
import 'package:xafee/core/navigation/app_navigation.dart';
import 'package:xafee/core/navigation/route.dart';
import 'package:xafee/features/auth/widgets/signup_widget.dart';
import 'package:xafee/locator.dart';

class SignUpScreen3 extends StatefulWidget {
  const SignUpScreen3({
    Key key,
  }) : super(key: key);
  @override
  _SignUpScreen3State createState() => _SignUpScreen3State();
}

class _SignUpScreen3State extends State<SignUpScreen3> {
  @override
  Widget build(BuildContext context) {
    var user = ModalRoute.of(context).settings.arguments as UserModel;
    return SignUpScreenWidget(
        title: 'Enter the code',
        hintText: 'Enter the code sent to your email address',
        buttonTitle: 'Next',
        keyBoardType: TextInputType.number,
        onPressed: () => locator<NavigationService>()
            .navigateTo(signupLayoutView4, arguments: user));
  }
}
