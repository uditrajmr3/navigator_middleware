import 'package:navigator_middleware/utils/app_exports.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(key: ValueKey("error"),);
  }
}
