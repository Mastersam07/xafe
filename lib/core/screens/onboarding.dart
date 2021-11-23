import 'package:flutter/material.dart';
import '../navigation/app_navigation.dart';
import '../navigation/route.dart';
import '../res/colors.dart';
import '../../widgets/xafe_button.dart';
import '../../locator.dart';
import '../../utils/size_config.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppColors.kColorAppBlack,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.height(20.0)),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: SizeConfig.height(12)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'xafe',
                          style: TextStyle(
                            color: AppColors.kColorWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.height(20),
                        ),
                        const Text(
                          'Smart Budgeting',
                          style: TextStyle(
                            color: AppColors.kColorWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: SizeConfig.height(107)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      XafeButton(
                        onPressed: () =>
                            locator<NavigationService>().navigateTo(loginView),
                        text: 'Login',
                      ),
                      SizedBox(
                        height: SizeConfig.height(70),
                      ),
                      InkWell(
                        onTap: () => locator<NavigationService>()
                            .navigateTo(signupLayoutView1),
                        child: RichText(
                          text: const TextSpan(
                              text: 'New here?',
                              style: TextStyle(
                                color: AppColors.kColorWhite,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontFamily: 'EuclidaCircular',
                              ),
                              children: [
                                TextSpan(
                                  text: ' Create an account',
                                  style: TextStyle(
                                    color: AppColors.kColorWhite,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    fontFamily: 'EuclidaCircular',
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.height(70),
                      ),
                      const Text(
                        // ignore: lines_longer_than_80_chars
                        'By continuing, you agree to Xafe’s terms of use \nand privacy policy',
                        style: TextStyle(
                          color: AppColors.kColorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
