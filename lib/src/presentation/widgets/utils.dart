import 'package:flutter/material.dart';
import 'package:test_champ2_ui_kit2/test_champ2_ui_kit2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaterialAppWrapper extends StatelessWidget {
  final Widget? widget;

  const MaterialAppWrapper({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          extensions: [CustomTheme(palette: LightPalette())],
        ),
        home: Builder(
          builder: (BuildContext context) {
            var theme = CustomTheme.of(context);
            return Scaffold(
              backgroundColor: theme.palette.white,
              body: Center(
                child:
                    widget ??
                    CircularProgressIndicator(color: theme.palette.accent),
              ),
            );
          },
        ),
      ),
    );
  }
}
