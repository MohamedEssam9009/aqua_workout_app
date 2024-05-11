import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/styles/colors.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerWidget(),
            bodyForm(),
            footerButton(),
          ],
        ),
      ),
    );
  }

  Widget footerButton() {
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () => Get.back(),
            child: Container(
              decoration: BoxDecoration(
                color: kFirstColor,
                borderRadius: BorderRadius.circular(5),
              ),
              height: 50.0,
              width: Get.width * 0.7,
              child: const Center(
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () => Get.back(),
            child: Container(
              decoration: BoxDecoration(
                color: kThirdColor,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: kFirstColor),
              ),
              height: 50.0,
              width: Get.width * 0.7,
              child: const Center(
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bodyForm() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF707070),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your email',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF707070),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF707070),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget headerWidget() {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.55,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/black/14.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
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
            padding: const EdgeInsets.all(20.0),
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
                    children: [
                      TextSpan(
                        text: 'ELEMENT',
                        style: TextStyle(
                          color: kFirstColor,
                        ),
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
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Train and live the new experience of\nexercising at home',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
