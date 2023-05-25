import 'package:navigator_middleware/utils/app_exports.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const ValueKey("home"),
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, AppRoutes.notification),
              child: const Text("Notification"),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, AppRoutes.profile),
              child: const Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
