import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xafee/features/auth/login/login_screen.dart';
import 'package:xafee/features/auth/signup/signup_1.dart';
import 'package:xafee/features/auth/signup/signup_2.dart';
import 'package:xafee/features/auth/signup/signup_3.dart';
import 'package:xafee/features/auth/signup/signup_4.dart';
import 'package:xafee/features/budget/budget_details.dart';
import 'package:xafee/features/budget/create_budget.dart';
import 'package:xafee/features/home/home_screen.dart';

import '../../app_home.dart';
import 'route.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case signupLayoutView1:
      return _getPageRoute(
          routeName: settings.name,
          args: settings.arguments,
          view: const SignUpScreen1());
    case signupLayoutView2:
      return _getPageRoute(
          routeName: settings.name,
          args: settings.arguments,
          view: const SignUpScreen2());
    case signupLayoutView3:
      return _getPageRoute(
          routeName: settings.name,
          args: settings.arguments,
          view: const SignUpScreen3());
    case signupLayoutView4:
      return _getPageRoute(
          routeName: settings.name,
          args: settings.arguments,
          view: const SignUpScreen4());
    case loginView:
      return _getPageRoute(
          routeName: settings.name,
          args: settings.arguments,
          view: const LoginScreen());
    case homeView:
      return _getPageRoute(
          routeName: settings.name,
          args: settings.arguments,
          view: const HomeScreen());
    case mainView:
      return _getPageRoute(
          routeName: settings.name,
          args: settings.arguments,
          view: const AppMainScreen());
    case createBudgetView:
      return _getPageRoute(
          routeName: settings.name,
          args: settings.arguments,
          view: const CreateBudgetScreen());
    case budgetDetailsView:
      return _getPageRoute(
          routeName: settings.name,
          args: settings.arguments,
          view: const BudgetDetailsScreen());
    default:
      return CupertinoPageRoute<dynamic>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute<dynamic> _getPageRoute({String routeName, Widget view, Object args}) {
  return CupertinoPageRoute<dynamic>(
      settings: RouteSettings(name: routeName, arguments: args),
      builder: (_) => view);
}
