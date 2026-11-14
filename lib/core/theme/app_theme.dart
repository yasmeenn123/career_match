import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_color.dart';
import 'package:graduation_project/core/theme/app_text_style.dart';

class AppTheme {
  AppTheme._();
  static final light=ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.background,
    colorScheme: const ColorScheme.light(
        primary: AppColor.navy,
        secondary: AppColor.blue,
        tertiary: AppColor.teal,
        error: AppColor.error,
        surface:AppColor.surface,
        ),
    textTheme: TextTheme(
      displayLarge: AppTextStyle.displayLg,
      headlineMedium: AppTextStyle.headlineMd,
      headlineLarge: AppTextStyle.headlineLg,
      headlineSmall: AppTextStyle.headlineSm,
      bodyLarge: AppTextStyle.bodyLg,
      bodyMedium: AppTextStyle.bodyMd,
        bodySmall: AppTextStyle.bodySm,
      labelSmall:  AppTextStyle.labelSm,
      labelMedium: AppTextStyle.labelMd,
      labelLarge: AppTextStyle.labelLg,



    ),

  );


}