import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/storage/local/theme_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefInjector {
  static init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    rg.registerSingleton<SharedPreferences>(sharedPreferences);

    rg.registerLazySingleton<ThemePrefs>(() => ThemePrefs(preferences: rg()));
  }
}
