import 'package:flutter/material.dart';

abstract class Palette {
  abstract Color black;
  abstract Color white;
  abstract Color accent;
  abstract Color accentInactive;
  abstract Color error;
  abstract Color inputBg;
  abstract Color description;
}

class LightPalette extends Palette{
  @override
  Color black = Color(0xFF000000);

  @override
  Color white = Color(0xFFFFFFFF);

  @override
  Color accent = Color(0xFF1A6FEE);

  @override
  Color accentInactive = Color(0xFFC9D4FB);

  @override
  Color error = Color(0xFFFD3535);

  @override
  Color inputBg = Color(0xFFF5F5F9);

  @override
  Color description = Color(0xFF7E7E9A);
}