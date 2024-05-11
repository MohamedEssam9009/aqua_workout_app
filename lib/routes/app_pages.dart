import '../pages/xcore.dart';
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
    GetPage(
      name: Routes.login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterView(),
    ),
    GetPage(
      name: Routes.forgetPassword,
      page: () => const ForgetPasswordView(),
    ),
  ];
}
