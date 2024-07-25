import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rara_design_system/core/extension/build_context_extension.dart';
import 'package:rara_design_system/core/theme/theme.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppTheme.lightTheme);

  toogleTheme(BuildContext context) {
    if (context.isDarkMode) {
      log("Theme mode : Light");
      emit(AppTheme.lightTheme);
    } else {
      log("Theme mode : Dark");
      emit(AppTheme.lightTheme);
    }
  }
}
