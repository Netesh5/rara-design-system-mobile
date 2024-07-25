import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/storage/local/theme_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefInjector {
  init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    g.registerSingleton<SharedPreferences>(sharedPreferences);

    g.registerLazySingleton<ThemePrefs>(() => ThemePrefs(preferences: g()));
  }
}
