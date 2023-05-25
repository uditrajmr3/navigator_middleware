import 'package:flutter/material.dart';

class NavigationMiddleware {
  static final NavigationMiddleware _instance = NavigationMiddleware._internal();

  factory NavigationMiddleware() {
    return _instance;
  }

  NavigationMiddleware._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<T?> push<T extends Object?>(Widget page) {
    debugPrint("pushed route: ${page.toString()}");
    return navigatorKey.currentState!.push(
      MaterialPageRoute<T>(builder: (BuildContext context) => page),
    );
  }

  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(Widget page) {
    debugPrint("pushed and replaced with route: ${page.toString()}");
    return navigatorKey.currentState!.pushReplacement(
      MaterialPageRoute<T>(builder: (BuildContext context) => page),
    );
  }

  Future<T?> pushAndRemoveUntil<T extends Object?>(
      Widget page, RoutePredicate predicate) {
    debugPrint(" popped and pushed route: ${page.toString()}");
    return navigatorKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute<T>(builder: (BuildContext context) => page),
      predicate,
    );
  }

  void pop<T extends Object?>([T? result]) {
    debugPrint("popped route: ${result.toString()}");
    return navigatorKey.currentState!.pop(result);
  }
}