import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/cubit/theme_cubit.dart';
import 'package:rara_design_system/core/theme/dark_colors.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/theme/light_colors.dart';
import 'package:rara_design_system/core/theme/theme.dart';

class ThemeInjector {
  static init(
      {LightColors? lightColors, DarkColors? darkColors, ITheme? appTheme}) {
    rg.registerFactory<ITheme>(() => appTheme ?? AppTheme());
    rg.registerFactory<LightColors>(() => lightColors ?? LightColors());
    rg.registerFactory<DarkColors>(() => darkColors ?? DarkColors());
    rg.registerFactory<ThemeCubit>(() => ThemeCubit(themePrefs: rg()));
  }
}
