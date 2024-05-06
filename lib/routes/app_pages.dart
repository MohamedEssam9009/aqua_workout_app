import 'package:aqua_workout_app/pages/started/about_view.dart';
import 'package:aqua_workout_app/pages/started/welcome_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.welcome;
  static final routes = [
    GetPage(
      name: Routes.welcome,
      page: () => const WelcomeView(),
    ),
    GetPage(
      name: Routes.about,
      page: () => const AboutView(),
    ),
  ];
}
