import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/styles/colors.dart';

class BodyHeader extends StatelessWidget {
  const BodyHeader(
      {super.key,
      required this.backgroundImagePath,
      required this.title,
      required this.subTitle});

  final String backgroundImagePath, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(),
        titleSubtitle(),
      ],
    );
  }

  Widget backgroundImage() {
    return Container(
      height: Get.height * 0.55,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget titleSubtitle() {
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
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    subTitle,
                    style: const TextStyle(
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
}
