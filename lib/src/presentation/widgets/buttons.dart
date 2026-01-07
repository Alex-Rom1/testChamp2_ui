import 'package:flutter/material.dart';
import 'package:test_champ2_ui_kit2/test_champ2_ui_kit2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class BaseButtonWidget extends StatelessWidget {
  final CustomTheme theme;
  final Function()? onTap;
  final String text;
  final Color backgroundColor;
  final Color? disabledBackgroundColor;
  final Color textColor;
  final Color disabledTextColor;
  final Color strokeColor;

  const BaseButtonWidget({
    super.key,
    required this.theme,
    required this.onTap,
    required this.text,
    required this.backgroundColor,
    required this.disabledBackgroundColor,
    required this.textColor,
    required this.disabledTextColor,
    required this.strokeColor,
  });

  @protected
  double? get width;

  @protected
  double get height;

  @protected
  TextStyle get textStyle;

  @protected
  EdgeInsets get padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FilledButton(
        onPressed: onTap,
        style: FilledButton.styleFrom(
          padding: padding,
          backgroundColor: backgroundColor,
          disabledBackgroundColor: disabledBackgroundColor,
          side: BorderSide(
            width: 1.w,
            style: BorderStyle.solid,
            color: strokeColor,
          ),
        ),
        child: Text(
          text,
          style: textStyle.copyWith(
            color: onTap != null ? textColor : disabledTextColor,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
