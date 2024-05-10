import '../../shared/styles/colors.dart';
import '../../shared/widgets/option_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/black/16.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 20.0),
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
                          'About You',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'We want to know more about you, follow the next \nsteps to complete the information',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  ValueBuilder<int?>(
                    initialValue: 0,
                    builder: (value, updateFn) => Row(
                      children: [
                        OptionWidget(
                          onTap: () => updateFn(0),
                          state: 'I\'m\nBeginner',
                          detail: 'I have trained several times',
                          enable: value == 0 ? true : false,
                        ),
                        const SizedBox(width: 10.0),
                        OptionWidget(
                          onTap: () => updateFn(1),
                          state: 'I\'m\nExpert',
                          detail: 'I have trained more times',
                          enable: value == 1 ? true : false,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => Get.back(),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Text(
                            'Back',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 40.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: kFirstColor,
                          ),
                          child: const Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
