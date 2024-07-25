// ignore_for_file: public_member_api_docs, sort_constructors_first
library rara_design_system;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/cubit/theme_cubit.dart';

class ThemeWrapper extends StatefulWidget {
  final Widget child;
  final GlobalKey<NavigatorState>? navigatorKey;
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  final Widget? home;
  final Map<String, Widget Function(BuildContext)> routes =
      const <String, WidgetBuilder>{};
  final String? initialRoute;
  final Route<dynamic>? Function(RouteSettings)? onGenerateRoute;
  final List<Route<dynamic>> Function(String)? onGenerateInitialRoutes;
  final Route<dynamic>? Function(RouteSettings)? onUnknownRoute;
  final bool Function(NavigationNotification)? onNavigationNotification;
  final List<NavigatorObserver> navigatorObservers =
      const <NavigatorObserver>[];
  final Widget Function(BuildContext, Widget?)? builder;
  final String title = '';
  final String Function(BuildContext)? onGenerateTitle;
  final Color? color;
  final ThemeData? theme;
  final ThemeData? darkTheme;
  final ThemeData? highContrastTheme;
  final ThemeData? highContrastDarkTheme;
  final ThemeMode? themeMode = ThemeMode.system;
  final Duration themeAnimationDuration = kThemeAnimationDuration;
  final Curve themeAnimationCurve = Curves.linear;
  final Locale? locale;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Locale? Function(List<Locale>?, Iterable<Locale>)?
      localeListResolutionCallback;
  final Locale? Function(Locale?, Iterable<Locale>)? localeResolutionCallback;
  final Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')];
  final bool debugShowMaterialGrid = false;
  final bool showPerformanceOverlay = false;
  final bool checkerboardRasterCacheImages = false;
  final bool checkerboardOffscreenLayers = false;
  final bool showSemanticsDebugger = false;
  final bool debugShowCheckedModeBanner = true;
  final Map<ShortcutActivator, Intent>? shortcuts;
  final Map<Type, Action<Intent>>? actions;
  final String? restorationScopeId;
  final ScrollBehavior? scrollBehavior;
  final bool useInheritedMediaQuery = false;
  final AnimationStyle? themeAnimationStyle;
  const ThemeWrapper({
    super.key,
    required this.child,
    this.navigatorKey,
    this.scaffoldMessengerKey,
    this.home,
    this.initialRoute,
    this.onGenerateRoute,
    this.onGenerateInitialRoutes,
    this.onUnknownRoute,
    this.onNavigationNotification,
    this.builder,
    this.onGenerateTitle,
    this.color,
    this.theme,
    this.darkTheme,
    this.highContrastTheme,
    this.highContrastDarkTheme,
    this.locale,
    this.localizationsDelegates,
    this.localeResolutionCallback,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
    this.scrollBehavior,
    this.themeAnimationStyle,
    this.localeListResolutionCallback,
  });

  @override
  State<ThemeWrapper> createState() => _ThemeWrapperState();
}

class _ThemeWrapperState extends State<ThemeWrapper> {
  @override
  void initState() {
    intializeDI();
    super.initState();
  }

  intializeDI() async {
    await DI.init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => g<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, appTheme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: appTheme,
            home: widget.child,
          );
        },
      ),
    );
  }
}
