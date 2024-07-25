import 'package:shared_preferences/shared_preferences.dart';

import 'package:rara_design_system/core/storage/interface/istorage_repo.dart';

class ThemePrefs<T> implements IStorageRepo {
  final SharedPreferences preferences;
  ThemePrefs({
    required this.preferences,
  });

  @override
  Future<void> clear({required String key}) async {
    await preferences.remove(key);
  }

  @override
  Future<String?> fetch({required String key}) async {
    final data = preferences.getString(key);
    if (data == null) return null;
    return data;
  }

  @override
  Future<void> save({required data, required String key}) async {
    await preferences.setString(key, data);
  }
}
