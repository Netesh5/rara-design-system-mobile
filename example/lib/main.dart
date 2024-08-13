import 'package:example/main.directories.g.dart';
import 'package:flutter/material.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/services/navigation_service/navigation_service.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/theme/theme.dart';
import 'package:rara_design_system/rara_design_system.dart';

import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the generated directories variable

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RaraDI.init();
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RaraApp(
      navigatorKey: NavigationService.navigationKey,
      child: Widgetbook.material(
        directories: directories,
        addons: [
          MaterialThemeAddon(
            themes: [
              WidgetbookTheme(
                name: 'Light',
                data: AppTheme.lightTheme,
              ),
              WidgetbookTheme(
                name: 'Dark',
                data: AppTheme.darkTheme,
              ),
            ],
            initialTheme: WidgetbookTheme(
              name: 'Light',
              data: AppTheme.lightTheme,
            ),
          ),
          TextScaleAddon(
            scales: [
              1.0,
              2.0,
              3.0,
            ],
          ),
          DeviceFrameAddon(
            devices: Devices.all,
          ),
          InspectorAddon(),
          AlignmentAddon(),
          ZoomAddon(),
        ],
        appBuilder: (context, child) {
          return Center(
            child: child,
          );
        },
      ),
    );
  }
}
