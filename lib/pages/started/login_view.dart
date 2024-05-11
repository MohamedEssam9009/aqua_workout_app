import '../widgets/body_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../../shared/styles/colors.dart';
import '../../shared/widgets/text_field_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BodyHeader(
              backgroundImagePath: 'assets/images/black/12.jpg',
              title: 'Login',
              subTitle:
                  'Train and live the new experience of \nexercising at home',
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  formLogin(),
                  const SizedBox(height: 15.0),
                  forgotButton(),
                  const SizedBox(height: 15.0),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 50.0,
                            width: Get.width * 0.7,
                            decoration: BoxDecoration(
                              color: kFirstColor,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: const Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(Routes.register),
                          child: Container(
                            height: 50.0,
                            width: Get.width * 0.7,
                            decoration: BoxDecoration(
                              color: kThirdColor,
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                width: 1.0,
                                color: kFirstColor,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Align forgotButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => Get.toNamed(Routes.forgetPassword),
        child: const Text(
          'Forgot your Password?',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }

  Column formLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldWidget(
          labelText: 'Email',
          hintText: 'mohamed.essam90009@gmail.com',
          obscureText: true,
          controller: TextEditingController(),
        ),
        const SizedBox(height: 20.0),
        TextFieldWidget(
          labelText: 'Password',
          hintText: '*****',
          obscureText: true,
          controller: TextEditingController(),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
