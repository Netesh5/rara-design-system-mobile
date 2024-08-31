import 'package:get_it/get_it.dart';
import 'package:rara_design_system/core/injection/pref_injector.dart';
import 'package:rara_design_system/core/injection/theme_injector.dart';
import 'package:rara_design_system/core/theme/dark_colors.dart';
import 'package:rara_design_system/core/theme/light_colors.dart';
import 'package:rara_design_system/core/theme/theme.dart';

final rg = GetIt.instance;

class RaraDI {
  static init(
      {LightColors? lightColors,
      DarkColors? darkColors,
      AppTheme? appTheme}) async {
    await PrefInjector.init();
    await ThemeInjector.init(
        lightColors: lightColors, darkColors: darkColors, appTheme: appTheme);
  }
}
