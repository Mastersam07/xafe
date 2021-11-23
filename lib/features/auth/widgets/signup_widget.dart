import 'package:flutter/material.dart';
import 'package:xafee/core/res/colors.dart';
import 'package:xafee/widgets/back_button.dart';
import 'package:xafee/widgets/xafe_button.dart';
import 'package:xafee/utils/size_config.dart';

class SignUpScreenWidget extends StatefulWidget {
  const SignUpScreenWidget({
    Key key,
    this.title,
    this.buttonTitle,
    this.isPasswordScreen = false,
    this.hintText,
    this.onPressed,
    this.keyBoardType,
    this.controller,
    this.isBusy = false,
    this.showPasswordText,
    this.validator,
    this.obscureText = false,
    this.onShowPasswordPressed,
  }) : super(key: key);

  final String title;
  final String showPasswordText;
  final String hintText;
  final String buttonTitle;
  final bool isBusy;
  final bool obscureText;
  final bool isPasswordScreen;
  final FormFieldValidator<String> validator;

  final TextEditingController controller;
  final TextInputType keyBoardType;
  final VoidCallback onPressed;
  final VoidCallback onShowPasswordPressed;

  @override
  _SignUpScreenWidgetState createState() => _SignUpScreenWidgetState();
}

class _SignUpScreenWidgetState extends State<SignUpScreenWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.width(20)),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: SizeConfig.height(66.45)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      XafeBackArrow(),
                      Text(
                        'Sign up',
                        style: TextStyle(
                          color: AppColors.kColorAppBlack,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                  SizedBox(height: SizeConfig.height(60.45)),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: AppColors.kColorAppBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 38,
                    ),
                  ),
                  SizedBox(height: SizeConfig.height(12)),
                  TextFormField(
                    keyboardType: widget.keyBoardType,
                    controller: widget.controller,
                    validator: widget.validator,
                    obscureText: widget.obscureText,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      filled: false,
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      hintText: widget.hintText,
                      hintStyle: const TextStyle(
                        color: AppColors.kColorAppGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                      height:
                          widget.isPasswordScreen ? SizeConfig.height(38) : 0),
                  widget.isPasswordScreen
                      ? Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: widget.onShowPasswordPressed,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: SizeConfig.height(10),
                                  horizontal: SizeConfig.width(6.5)),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.kColorAltStroke,
                              ),
                              child: Text(
                                widget.showPasswordText,
                                style: const TextStyle(
                                  color: AppColors.kColorAppBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                  SizedBox(
                    height: widget.isPasswordScreen
                        ? SizeConfig.height(107.95)
                        : SizeConfig.height(176.95),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: SizeConfig.height(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.kColorAltStroke,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        height: SizeConfig.height(10),
                        width: SizeConfig.width(93.5),
                        decoration: const BoxDecoration(
                          color: AppColors.kColorBlack,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.height(30),
                  ),
                  XafeButton(
                    text: widget.buttonTitle,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        widget.onPressed();
                      }
                    },
                    isLoading: widget.isBusy,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
