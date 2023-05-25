# Navigation MiddleWare

This Flutter project implements Navigator MiddleWare with NavigatorObserver and RouterObserver

> you will also be able to find  Navigator MiddleWare implementation on my github using GoRuter

## Basic Implementation

```dart
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
```

## Runner Code

```dart
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final NavigationMiddleware _navigationMiddleware = NavigationMiddleware();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation MiddleWare",
      initialRoute: AppRoutes.home,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorObservers: [_navigationMiddleware],
    );
  }
}
```

## License

- This Project does not have any license.

## Collaboration

- This project is not open for collaboration

## Bugs & Issue

- For bugs, feature requests, and discussion please use [GitHub Issues](https://github.com/udit-raj-simform/navigation_middleware/issues)
