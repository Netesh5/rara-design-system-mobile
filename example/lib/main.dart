import 'package:example/home_page.dart';
import 'package:flutter/material.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/services/navigation_service/navigation_service.dart';

import 'package:rara_design_system/rara_design_system.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RaraDI.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return RaraApp(
      navigatorKey: NavigationService.navigationKey,
      child: const HomePage(),
    );
  }
}
