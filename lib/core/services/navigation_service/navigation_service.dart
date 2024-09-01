import 'package:flutter/material.dart';

class NavigationService {
  NavigationService._internal();
  static final NavigationService _navigationService =
      NavigationService._internal();

  factory NavigationService() => _navigationService;

  //Navigation Key
  static final GlobalKey<NavigatorState> _navigatorKey =
      GlobalKey<NavigatorState>();

  static get navigationKey => _navigatorKey;

  static Future<dynamic> pushNamed({required String routeName, Object? args}) {
    return _navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  static Future<dynamic> pushReplacementNamed(
      {required String routeName, Object? args}) {
    return _navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: args);
  }

  //Navigate Push

  static PageRoute<T> _getRoute<T>(
    Widget screen, {
    bool fullscreenDialog = false,
  }) {
    return MaterialPageRoute(
      builder: (c) => screen,
      fullscreenDialog: fullscreenDialog,
      settings: RouteSettings(name: screen.runtimeType.toString()),
    );
  }

  static Future<dynamic> push({
    String routeName = '',
    required Widget target,
    Object? args,
    bool rootNavigator = false,
    bool fullscreendialog = false,
  }) {
    return _navigatorKey.currentState!
        .push(_getRoute(target, fullscreenDialog: fullscreendialog));
  }

  //Navigate Push Replacement

  static Future<dynamic> pushReplacement({
    String routeName = '',
    required Widget target,
    Object? args,
    bool rootNavigator = false,
    bool fullscreendialog = false,
  }) {
    return _navigatorKey.currentState!
        .pushReplacement(_getRoute(target, fullscreenDialog: fullscreendialog));
  }

  //Navigate Push Until

  static Future<dynamic> pushUntil(
      {String routeName = '', required Widget target, Object? args}) {
    return _navigatorKey.currentState!
        .pushAndRemoveUntil(SlideRoute(child: target), (route) => false);
  }

  //Pop Function
  static void pop([Object? argument]) {
    return _navigatorKey.currentState!.pop(argument);
  }

  //Pop Until Function
  static void popUntil(
      {required String routeName, bool Function(Route<dynamic>)? routes}) {
    return _navigatorKey.currentState!
        .popUntil(routes ?? ModalRoute.withName(routeName));
  }

  //Pop Until FirstPage Function
  static void popUntilFirstPage() {
    return _navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  static void pushNamedAndRemoveUntil(
      {required String routeName,
      Object? args,
      bool Function(Route<dynamic>)? routes}) {
    _navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      routes ?? (Route<dynamic> route) => false,
      arguments: args,
    );
  }

//Pop and Push Function
  static Future<dynamic> popAndPushNamed(
      {String routeName = '', Object? args}) {
    return _navigatorKey.currentState!.popAndPushNamed(
      routeName,
      arguments: args,
    );
  }

  static bool get canPop => _navigatorKey.currentState!.canPop();

  static BuildContext get context =>
      _navigatorKey.currentState!.overlay!.context;

  static Future<bool> get mayBePop async =>
      await _navigatorKey.currentState!.maybePop();
}

class SlideRoute<T> extends PageRouteBuilder<T> {
  ///
  SlideRoute({
    required this.child,
    super.fullscreenDialog,
    this.offset,
  }) : super(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (a, b, c) => child,
          settings: RouteSettings(name: child.runtimeType.toString()),
        );

  ///
  final Widget child;

  ///
  final Offset? offset;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: offset ?? const Offset(0, 1),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }
}
