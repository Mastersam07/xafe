import 'package:flutter/material.dart';
import 'package:xafee/utils/size_config.dart';

import '../core/res/colors.dart';

class XafeButton extends StatelessWidget {
  const XafeButton({
    Key key,
    @required VoidCallback onPressed,
    @required this.text,
    this.filledButton = true,
    this.isLoading = false,
    bool isDisabled,
  })  : _onPressed = onPressed,
        super(key: key);

  final String text;
  final bool filledButton;
  final bool isLoading;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _onPressed,
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Container(
        width: double.infinity,
        height: SizeConfig.height(60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.kColorBlue,
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  strokeWidth: 1,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.kColorWhite),
                )
              : Text(
                  text,
                  style: const TextStyle(
                    color: AppColors.kColorWhite,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
        ),
      ),
    );
  }
}
