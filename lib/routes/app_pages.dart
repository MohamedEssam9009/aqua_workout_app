import 'package:get/get.dart';

import '../pages/started/about_view.dart';
import '../pages/started/forget_password_view.dart';
import '../pages/started/login_view.dart';
import '../pages/started/welcome_view.dart';

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
    GetPage(
      name: Routes.login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: Routes.forgetPassword,
      page: () => const ForgetPasswordView(),
    ),
  ];
}
