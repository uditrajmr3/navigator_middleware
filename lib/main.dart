import 'package:navigator_middleware/utils/app_exports.dart';

void main() {
  runApp(const MyApp());
}

class NavigationMiddleware extends NavigatorObserver {
// Override the methods you want to intercept and modify
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('{didPush} \n route: $route \n previousRoute: $previousRoute');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('{didPop} \n route: $route \n previousRoute: $previousRoute');
    super.didPop(route, previousRoute);
  }
// Add more overridden methods as needed
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final NavigationMiddleware _navigationMiddleware = NavigationMiddleware();
  final NavigatorMiddleware _navigatorMiddleware = NavigatorMiddleware(
    onPush: (r, pr) {
      if (r.isFirst) {
        debugPrint(
            "............................................Hello, Welcome back Home");
      }
      if (r.settings.name == "/profile") {
        debugPrint(
            "............................................Hey, How About I Tell You Something");
      }
    },
    onPop: (r, pr) {
      if (r.isFirst) {
        debugPrint(
            "............................................Hey, You went Away");
      }
      if (r.settings.name == "/profile") {
        debugPrint(
            "............................................Hey, So what was i about to tell");
      }
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation MiddleWare",
      initialRoute: AppRoutes.home,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorObservers: [_navigatorMiddleware, _navigationMiddleware],
    );
  }
}
