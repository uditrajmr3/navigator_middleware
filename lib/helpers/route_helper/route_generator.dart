import 'package:navigator_middleware/utils/app_exports.dart';

class RouteGenerator {




  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
            builder: (_) => const Home(), settings: settings);
      case AppRoutes.login:
        return MaterialPageRoute(
            builder: (_) => const Login(), settings: settings);
      case AppRoutes.notification:
        return MaterialPageRoute(
            builder: (_) => const Notifications(), settings: settings);
      case AppRoutes.like:
        return MaterialPageRoute(
            builder: (_) => const Like(), settings: settings);
      case AppRoutes.chat:
        return MaterialPageRoute(
            builder: (_) => const Chat(), settings: settings);
      case AppRoutes.profile:
        return MaterialPageRoute(
            builder: (_) => const Profile(), settings: settings);
      case AppRoutes.settings:
        return MaterialPageRoute(
            builder: (_) => const Settings(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => const ErrorScreen(), settings: settings);
    }
  }
}
