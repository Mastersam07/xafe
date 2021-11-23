import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xafee/core/res/assets.dart';
import 'package:xafee/core/res/colors.dart';
import 'package:xafee/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kColorBlue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            SizedBox(
              height:
                  SizeConfig.height(48.02),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.width(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: SizeConfig.width(10),
                        right: SizeConfig.width(19.04),
                        bottom: SizeConfig.height(14.04),
                        top: SizeConfig.width(12.04)),
                    decoration: BoxDecoration(
                      color: AppColors.kColorWhite.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          'This week',
                          style: TextStyle(
                            color: AppColors.kColorWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.height(6),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.kColorWhite,
                          size: SizeConfig.height(12),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.kColorWhite,
                    radius: SizeConfig.height(24),
                    child: InkWell(
                      onTap: () {
                        // model.showBottomSheet(context);
                      },
                      child: Image.asset(
                        AppAssets.penIcon,
                        height: SizeConfig.height(19.97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.height(52.57),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: SizeConfig.height(83.99),
                      width: SizeConfig.width(70),
                      decoration: BoxDecoration(
                        color: AppColors.kColorWhite,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.width(20),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Expenses',
                          style: TextStyle(
                            color: AppColors.kColorWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          r'$4,750.00',
                          style: TextStyle(
                            color: AppColors.kColorWhite,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: SizeConfig.width(20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: SizeConfig.height(140),
                      width: SizeConfig.width(70),
                      decoration: BoxDecoration(
                        color: AppColors.kColorWhite,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.height(20),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Income',
                          style: TextStyle(
                            color: AppColors.kColorWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          r'$9,500.00',
                          style: TextStyle(
                            color: AppColors.kColorWhite,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.height(56.69),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.kColorWhite,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.height(26.07),
                    ),
                    Container(
                      width: SizeConfig.height(50),
                      height: SizeConfig.width(5),
                      decoration: BoxDecoration(
                        color: AppColors.kColorBlackish.withOpacity(0.1),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.height(20),
                    ),
                    Expanded(
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        itemCount: 4,
                        separatorBuilder: (_, __) => Divider(
                          height: 0,
                          color: const Color(0xFF9A96A4).withOpacity(0.1),
                        ),
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.height(28.0),
                              horizontal: SizeConfig.width(20.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  // ignore: lines_longer_than_80_chars
                                  'expenseName $index',
                                  style: const TextStyle(
                                    color: AppColors.kColorAppBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  // ignore: lines_longer_than_80_chars
                                  '\$2000.00',
                                  style: TextStyle(
                                    color: AppColors.kColorAppBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
