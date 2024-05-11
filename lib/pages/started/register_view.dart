import 'package:aqua_workout_app/pages/widgets/body_header.dart';
import 'package:aqua_workout_app/shared/styles/colors.dart';
import 'package:aqua_workout_app/shared/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            bodyHeader(),
            bodyForm(),
            actionButton(),
          ],
        ),
      ),
    );
  }

  Widget bodyHeader() {
    return const BodyHeader(
      backgroundImagePath: 'assets/images/black/4.jpg',
      title: 'Sign Up',
      subTitle: 'Train and live the new experience of \nexercising at home',
    );
  }

  Widget bodyForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldWidget(
            labelText: 'Name',
            hintText: 'Enter your name',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 20.0),
          TextFieldWidget(
            labelText: 'Phone',
            hintText: 'Enter your phone',
            obscureText: true,
            controller: TextEditingController(),
          ),
          const SizedBox(height: 20.0),
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
          TextFieldWidget(
            labelText: 'Confirm Password',
            hintText: '******',
            obscureText: true,
            controller: TextEditingController(),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'By siging up, I agree to the aqua workout user Agrement and Privacy Policy',
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget actionButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Center(
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
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () => Get.back(),
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
                    'Cancel',
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
    );
  }
}
