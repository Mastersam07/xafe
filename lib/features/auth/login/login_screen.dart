import 'package:flutter/material.dart';
import 'package:xafee/core/navigation/app_navigation.dart';
import 'package:xafee/core/navigation/route.dart';
import 'package:xafee/core/res/assets.dart';
import 'package:xafee/core/res/colors.dart';
import 'package:xafee/widgets/back_button.dart';
import 'package:xafee/core/res/components/validators.dart';
import 'package:xafee/widgets/xafe_button.dart';
import 'package:xafee/utils/size_config.dart';

import '../../../locator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailEditingController;
  TextEditingController _passwordEditingController;
  final GlobalKey<FormState> _formKey = GlobalKey();
  final ValueNotifier<bool> _isObscure = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController(
      text: '',
    );
    _passwordEditingController = TextEditingController(
      text: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.width(20)),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.height(66.45),
                ),
                const XafeBackArrow(),
                SizedBox(
                  height: SizeConfig.height(60.45),
                ),
                const Text(
                  'Welcome back',
                  style: TextStyle(
                    color: AppColors.kColorAppBlack,
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                const Text(
                  'Login to your account',
                  style: TextStyle(
                    color: AppColors.kColorBlackish,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.height(13),
                ),
                TextFormField(
                  controller: _emailEditingController,
                  validator: (value) {
                    return XafeFieldValidator.emailValidator(value);
                  },
                  decoration: const InputDecoration(
                    hintText: 'email address',
                  ),
                ),
                SizedBox(
                  height: SizeConfig.height(10),
                ),
                ValueListenableBuilder(
                    valueListenable: _isObscure,
                    builder: (_, value, child) {
                      return TextFormField(
                        controller: _passwordEditingController,
                        validator: (value) {
                          return XafeFieldValidator.defaultValidator(value);
                        },
                        obscureText: value,
                        decoration: InputDecoration(
                          hintText: '• • • • • • • • • • ',
                          suffixIcon: UnconstrainedBox(
                            child: InkWell(
                              onTap: () {
                                _isObscure.value = !_isObscure.value;
                              },
                              child: Image.asset(
                                AppAssets.visibilityIcon,
                                height: SizeConfig.height(12.17),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: SizeConfig.height(32),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.width(10),
                        vertical: SizeConfig.height(6.5)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.kColorAltStroke,
                    ),
                    child: const Text(
                      'forgot password ?',
                      style: TextStyle(
                        color: AppColors.kColorAppBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                XafeButton(
                  text: 'Login',
                  onPressed: () {
                    // if (_formKey.currentState.validate()) {}
                    locator<NavigationService>().navigateTo(mainView);
                  },
                ),
                SizedBox(
                  height: SizeConfig.height(80),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
