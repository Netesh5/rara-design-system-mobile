import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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

  static Future<dynamic> push(
      {String routeName = '', required Widget target, Object? args}) {
    return _navigatorKey.currentState!.push(
      PageTransition(
        child: target,
        type: PageTransitionType.fade,
        settings: RouteSettings(name: routeName, arguments: args),
      ),
    );
  }

  //Navigate Push Replacement

  static Future<dynamic> pushReplacement(
      {String routeName = '', required Widget target, Object? args}) {
    return _navigatorKey.currentState!.pushReplacement(
      PageTransition(
        child: target,
        type: PageTransitionType.fade,
        settings: RouteSettings(name: routeName, arguments: args),
      ),
    );
  }

  //Navigate Push Until

  static Future<dynamic> pushUntil(
      {String routeName = '', required Widget target, Object? args}) {
    return _navigatorKey.currentState!.pushAndRemoveUntil(
        PageTransition(
          child: target,
          type: PageTransitionType.fade,
        ),
        (route) => false);
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
