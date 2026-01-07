import 'package:flutter/material.dart';
import 'package:test_champ2_ui_kit2/test_champ2_ui_kit2.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Palette palette;
  final Texts texts;

  CustomTheme({required this.palette}) : texts = Texts(palette: palette);

  @override
  ThemeExtension<CustomTheme> copyWith() {
    return CustomTheme(palette: palette);
  }

  @override
  ThemeExtension<CustomTheme> lerp(covariant ThemeExtension<CustomTheme>? other, double t) {
    return this;
  }

  static CustomTheme of(BuildContext context) => Theme.of(context).extension<CustomTheme>()!;
}