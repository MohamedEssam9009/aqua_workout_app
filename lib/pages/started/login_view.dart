import '../../routes/app_pages.dart';
import '../../shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            Stack(
              children: [
                backgroundImage(),
                titleSubtitle(),
              ],
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
                          onPressed: () {},
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
                  )
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
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(
            color: Color(0xFF707070),
            fontSize: 18.0,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your email',
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
        SizedBox(height: 15.0),
        Text(
          'Password',
          style: TextStyle(
            color: Color(0xFF707070),
            fontSize: 18.0,
          ),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Enter your password',
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container titleSubtitle() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            kThirdColor,
            Colors.transparent,
          ],
        ),
      ),
      height: Get.height * 0.55,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            RichText(
              text: const TextSpan(
                text: 'HARD\t',
                style: TextStyle(
                  fontFamily: 'Bebas',
                  fontSize: 30.0,
                  letterSpacing: 5.0,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'ELEMENT',
                    style: TextStyle(color: kFirstColor),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Train and live the new experience of \nexercising at home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
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

  Container backgroundImage() {
    return Container(
      height: Get.height * 0.55,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/black/12.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
