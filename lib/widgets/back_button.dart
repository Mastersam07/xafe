import 'package:flutter/material.dart';
import '../core/navigation/app_navigation.dart';
import '../core/res/assets.dart';
import 'package:xafee/locator.dart';
import '../utils/size_config.dart';

class XafeBackArrow extends StatelessWidget {
  const XafeBackArrow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => locator<NavigationService>().pop(),
      child: Image.asset(
        AppAssets.backArrow,
        height: SizeConfig.height(19),
      ),
    );
  }
}
