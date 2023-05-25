import 'package:navigator_middleware/utils/app_exports.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const ValueKey("profile"),
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, AppRoutes.like),
              child: const Text("Like"),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, AppRoutes.chat),
              child: const Text("Chat"),
            ),
          ],
        ),
      ),
    );
  }
}
