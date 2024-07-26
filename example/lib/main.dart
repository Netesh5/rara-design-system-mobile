import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/light_colors.dart';

import 'package:rara_design_system/rara_design_system.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RaraDI.init(
    lightColors: LightColors().copyWith(
      textPrimaryOverride: Colors.green,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const RaraApp(
      child: HomePage(),
    );
  }
}
