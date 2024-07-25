import 'package:get_it/get_it.dart';
import 'package:rara_design_system/core/injection/theme_injector.dart';

final g = GetIt.instance;

class DI {
  static init() async {
    await ThemeInjector.init();
    await ThemeInjector.init();
  }
}
