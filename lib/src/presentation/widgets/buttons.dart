import 'package:flutter/material.dart';
import 'package:test_champ2_ui_kit2/test_champ2_ui_kit2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
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

class BigButtonWidget extends BaseButtonWidget {
  const BigButtonWidget({
    required super.theme,
    required super.onTap,
    required super.text,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.textColor,
    required super.disabledTextColor,
    required super.strokeColor,
  });

  @override
  double get height => 56.h;

  @override
  EdgeInsets get padding =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h);

  @override
  TextStyle get textStyle => theme.texts.title3Semibold17;

  @override
  double? get width => 335.w;

  BigButtonWidget.filled({
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: theme.palette.accent,
         disabledBackgroundColor: theme.palette.accentInactive,
         textColor: theme.palette.white,
         disabledTextColor: theme.palette.white,
         strokeColor: Colors.transparent,
       );

  BigButtonWidget.outline({
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: Colors.transparent,
         disabledBackgroundColor: Colors.transparent,
         textColor: theme.palette.accent,
         disabledTextColor: theme.palette.accentInactive,
         strokeColor: theme.palette.accent,
       );

  static Story get story => Story(
    name: 'Big button widget',
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);
      String text = context.knobs.text(label: 'Text', initial: 'test text');
      int type = context.knobs.options(
        label: 'Type',
        initial: 0,
        options: [
          Option(label: 'Filled', value: 0),
          Option(label: 'Outline', value: 1),
        ],
      );
      bool active = context.knobs.boolean(label: 'active', initial: true);

      void onTap() {
        debugPrint('Big button pressed');
      }

      switch (type) {
        case 0:
          return BigButtonWidget.filled(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
        case _:
          return BigButtonWidget.outline(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
      }
    },
  );
}