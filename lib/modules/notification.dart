import 'package:navigator_middleware/utils/app_exports.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const ValueKey("notification"),
      appBar: AppBar(
        title: const Text("Notification"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () =>
                  Navigator.popUntil(context, (route) => route.isFirst),
              child: const Text("Home"),
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.popAndPushNamed(context, AppRoutes.profile),
              child: const Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
