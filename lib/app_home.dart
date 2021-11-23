import 'package:flutter/material.dart';
import 'package:xafee/core/res/assets.dart';
import 'package:xafee/utils/size_config.dart';

import 'core/res/colors.dart';
import 'features/budget/buget_screen.dart';
import 'features/home/home_screen.dart';

enum BottomNavigationItem {
  home,
  categories,
  budget,
}

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({Key key}) : super(key: key);

  @override
  _AppMainScreenState createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  final ValueNotifier<BottomNavigationItem> _bottomNavigationItem =
      ValueNotifier(BottomNavigationItem.home);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _bottomNavigationItem,
        builder: (context, value, child) {
          return SafeArea(
            top: false,
            bottom: false,
            child: Scaffold(
              bottomNavigationBar: Container(
                height: SizeConfig.height(50) + MediaQuery.of(context).padding.bottom,
                color: AppColors.kColorWhite,
                padding: EdgeInsets.only(
                  top: SizeConfig.height(7.5),
                  bottom: SizeConfig.height(5.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BottomItem(
                      title: 'Home',
                      path: AppAssets.homeIcon,
                      selected: value == BottomNavigationItem.home,
                      onPressed: () {
                        _bottomNavigationItem.value = BottomNavigationItem.home;
                      },
                    ),
                    SizedBox(
                      width: SizeConfig.width(43),
                    ),
                    BottomItem(
                      title: 'Categories',
                      path: AppAssets.categoryIcon,
                      selected: value == BottomNavigationItem.categories,
                      onPressed: () {
                        _bottomNavigationItem.value =
                            BottomNavigationItem.categories;
                      },
                    ),
                    SizedBox(
                      width: SizeConfig.width(43),
                    ),
                    BottomItem(
                      title: 'Budget',
                      path: AppAssets.budgetIcon,
                      selected: value == BottomNavigationItem.budget,
                      onPressed: () {
                        _bottomNavigationItem.value =
                            BottomNavigationItem.budget;
                      },
                    ),
                  ],
                ),
              ),
              body: value == BottomNavigationItem.home
                  ? const HomeScreen()
                  : value == BottomNavigationItem.categories
                      ? Container()
                      : const BudgetsScreen(),
            ),
          );
        });
  }
}

class BottomItem extends StatelessWidget {
  const BottomItem({
    Key key,
    this.selected,
    this.title,
    this.path,
    this.onPressed,
  }) : super(key: key);

  final bool selected;
  final String title;
  final String path;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Image.asset(
            path,
            height: SizeConfig.height(19),
            color:
                selected ? AppColors.kColorAppBlack : AppColors.kColorAppGrey,
          ),
          Text(
            title,
            style: TextStyle(
              color:
                  selected ? AppColors.kColorAppBlack : AppColors.kColorAppGrey,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
