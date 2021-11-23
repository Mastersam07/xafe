import 'package:flutter/material.dart';
import 'package:xafee/core/res/assets.dart';
import 'package:xafee/core/res/colors.dart';
import 'package:xafee/widgets/back_button.dart';
import 'package:xafee/utils/size_config.dart';

class BudgetDetailsScreen extends StatelessWidget {
  const BudgetDetailsScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.kColorBlue,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:
                  SizeConfig.height(70.47),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.height(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const XafeBackArrow(),
                      const Text(
                        'budgetName',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: AppColors.kColorWhite,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor:
                              AppColors.kColorWhite.withOpacity(0.12),
                          radius: SizeConfig.height(24),
                          child: Image.asset(
                            AppAssets.addIcon,
                            height: SizeConfig.height(21),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.height(42.58),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: r'$ 200.00 ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 32,
                        color: AppColors.kColorWhite,
                        fontFamily: 'EuclidaCircular',
                      ),
                      children: [
                        TextSpan(
                          text: 'spent',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.kColorWhite,
                            fontFamily: 'EuclidaCircular',
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height(10),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: SizeConfig.height(11),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: AppColors.kColorWhite.withOpacity(0.12),
                        ),
                      ),
                      Container(
                        height: SizeConfig.height(11),
                        width: SizeConfig.width(199.85),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: AppColors.kColorWhite,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.height(17),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(SizeConfig.height(10)),
                      decoration: BoxDecoration(
                        color: AppColors.kColorWhite.withOpacity(0.12),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Text(
                        '\$2000/month',
                        style: TextStyle(
                          color: AppColors.kColorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.height(40.16),
                  ),
                ],
              ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      height: SizeConfig.height(39.63),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.width(20.0)),
                      child: const Text(
                        'Expense History',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kColorAppBlack,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.height(8),
                    ),
                    Expanded(
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.height(20.0),
                              horizontal: SizeConfig.width(21.48),
                            ),
                            child: Row(
                              children: [
                                const Text(
                                  '',
                                  style: TextStyle(
                                    fontSize: 36,
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConfig.width(12.68),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'expenseName',
                                      style: TextStyle(
                                        color: AppColors.kColorAppBlack,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'expenseDate',
                                      style: TextStyle(
                                        color: AppColors.kColorAppGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.height(10),
                                    vertical: SizeConfig.width(5),
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0F0627)
                                        .withOpacity(0.04),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Text(
                                    '\$2000',
                                    style: TextStyle(
                                      color: Color(0xFF0F0627),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (_, __) => Divider(
                          height: 0,
                          color: const Color(0xFF9A96A4).withOpacity(0.1),
                        ),
                        itemCount: 4,
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
