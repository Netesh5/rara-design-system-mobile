import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rara_design_system/core/extension/build_context_extension.dart';
import 'package:rara_design_system/core/storage/local/theme_pref.dart';
import 'package:rara_design_system/core/theme/theme.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit({
    required this.themePrefs,
  }) : super(AppTheme.lightTheme);
  final ThemePrefs themePrefs;

  init({ThemeData? lightTheme, ThemeData? darkTheme}) async {
    final res = await themePrefs.fetch(key: "@theme");
    if (res == null) return;
    if (res == ThemeMode.dark.name) {
      emit(darkTheme ?? AppTheme.darkTheme);
    } else {
      emit(lightTheme ?? AppTheme.lightTheme);
    }
  }

  toogleTheme(BuildContext context,
      {ThemeData? lightTheme, ThemeData? darkTheme}) {
    if (context.isDarkMode) {
      log("Theme mode : Light");
      themePrefs.save(data: ThemeMode.light.name, key: '@theme');
      emit(lightTheme ?? AppTheme.lightTheme);
    } else {
      log("Theme mode : Dark");
      themePrefs.save(data: ThemeMode.dark.name, key: '@theme');
      emit(darkTheme ?? AppTheme.darkTheme);
    }
  }
}
