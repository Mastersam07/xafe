import 'package:flutter/material.dart';
import 'package:xafee/core/navigation/app_navigation.dart';
import 'package:xafee/core/navigation/route.dart';
import 'package:xafee/core/res/colors.dart';
import 'package:xafee/locator.dart';
import 'package:xafee/utils/size_config.dart';

class BudgetsScreen extends StatefulWidget {
  const BudgetsScreen({Key key}) : super(key: key);

  @override
  _BudgetsScreenState createState() => _BudgetsScreenState();
}

class _BudgetsScreenState extends State<BudgetsScreen> {
  List<Color> hexColor = [
    const Color(0xFF52ACFF),
    const Color(0xFFFF529B),
    const Color(0xFF02B474),
    const Color(0xFFFF8514),
  ];

  Color colorRandom(int currentIndex) {
    if (currentIndex < hexColor.length) {
      return hexColor[currentIndex];
    } else {
      return hexColor[currentIndex % hexColor.length];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kColorBlue,
      body: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.width(
              20.0,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.height(65.02),
              ),
              Text(
                '‍💻 Budgets',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.textSize(24),
                  color: AppColors.kColorWhite,
                ),
              ),
              SizedBox(
                height: SizeConfig.height(53.77),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: SizeConfig.height(11),
                    mainAxisSpacing: SizeConfig.height(14),
                    childAspectRatio:
                        SizeConfig.height(180.97) / SizeConfig.height(113),
                  ),
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    if (index == 4) {
                      return InkWell(
                        onTap: () => locator<NavigationService>()
                            .navigateTo(createBudgetView),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.kColorWhite.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.add,
                            size: SizeConfig.height(18.67),
                            color: AppColors.kColorWhite,
                          ),
                        ),
                      );
                    }
                    return InkWell(
                      onTap: () => locator<NavigationService>()
                            .navigateTo(budgetDetailsView),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: SizeConfig.width(20),
                          top: SizeConfig.height(21.25),
                          right: SizeConfig.width(20),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kColorWhite,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'budgetName',
                              style: TextStyle(
                                color: const Color(0xFF898A8D),
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.textSize(16),
                              ),
                            ),
                            Text(
                              '\$2000/month',
                              style: TextStyle(
                                color: AppColors.kColorBlack,
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.textSize(20),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.height(12),
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: SizeConfig.height(11),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF52ACFF)
                                        .withOpacity(0.12),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  height: SizeConfig.height(11),
                                  width: SizeConfig.width(101),
                                  decoration: BoxDecoration(
                                    color: colorRandom(index),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
