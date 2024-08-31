import 'package:flutter/material.dart';
import 'package:rara_design_system/core/extension/build_context_extension.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/dark_colors.dart';
import 'package:rara_design_system/core/theme/interface/icolors.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/theme/light_colors.dart';

class AppTheme extends ITheme {
  static String? fontFamily;

  set font(String? fontFam) {
    fontFamily = fontFam ?? "Inter";
  }

  static final lightColors = rg<LightColors>();
  static final darkColors = rg<DarkColors>();
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: false,
        fontFamily: fontFamily,
        brightness: Brightness.light,
        scaffoldBackgroundColor: lightColors.surfaceLayout,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: lightColors.surfaceLayout,
          iconTheme: IconThemeData(
            color: lightColors.iconPrimary,
          ),
          titleTextStyle: TextStyle(
            color: lightColors.textPrimary,
            fontSize: 20,
          ),
        ),
        dividerColor: lightColors.borderElements,
        iconTheme: IconThemeData(
          color: lightColors.iconOnColor,
          size: 20,
        ),
        cardColor: lightColors.surfaceBackground,
        dialogBackgroundColor: lightColors.surfaceBackground,
        canvasColor: lightColors.surfaceBackground,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          prefixIconColor: lightColors.iconPrimary,
          hintStyle: TextStyle(
            fontSize: 16,
            color: lightColors.textSecondary,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              color: lightColors.borderElements,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              color: lightColors.borderElements,
            ),
          ),
          isDense: false,
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        useMaterial3: false,
        fontFamily: fontFamily,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: darkColors.surfaceLayout,
        dividerColor: darkColors.borderElements,
        dialogBackgroundColor: darkColors.surfaceBackground,
        cardColor: darkColors.surfaceLayout,
        iconTheme: IconThemeData(
          color: darkColors.iconPrimary,
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: darkColors.surfaceLayout,
          iconTheme: IconThemeData(
            color: darkColors.iconPrimary,
          ),
        ),
        canvasColor: darkColors.surfaceBackground,
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: darkColors.iconPrimary,
          hintStyle: TextStyle(
            fontSize: 16,
            color: darkColors.textSecondary,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              width: 2,
              color: darkColors.borderElements,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              width: 2,
              color: darkColors.borderElements,
            ),
          ),
          isDense: false,
        ),
      );

  @override
  IColors colors(BuildContext context) {
    return context.isDarkMode ? darkColors : lightColors;
  }

  String getfontFamily(String? font) {
    return fontFamily = font ?? "Inter";
  }
}
