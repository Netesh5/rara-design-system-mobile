import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/cubit/theme_cubit.dart';
import 'package:rara_design_system/core/theme/dark_colors.dart';
import 'package:rara_design_system/core/theme/light_colors.dart';

class ThemeInjector {
  static init() {
    g.registerFactory<LightColors>(() => LightColors());
    g.registerFactory<DarkColors>(() => DarkColors());
    g.registerFactory<ThemeCubit>(() => ThemeCubit(
          themePrefs: g(),
        ));
  }
}
