import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:rara_design_system/core/injection/injection.dart';

import 'package:rara_design_system/rara_design_system.dart';

void main() async {
  await DI.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ThemeWrapper(
      child: HomePage(),
    );
  }
}
