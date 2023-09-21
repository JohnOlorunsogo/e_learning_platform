import 'package:e_learning_platform/common/utils/app_colors.dart';
import 'package:e_learning_platform/common/widgets/custom_buttons.dart';
import 'package:e_learning_platform/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

//onboarding page
Widget appOnboardingPage(
  PageController controller, {
  String imgPath = 'assets/images/reading.png',
  String title = 'Learn Anytime',
  String subTitle =
      'Lorem ipsum dolor sit amet. Minim laborum veniam exercitation eu aute laborum magna sit.',
  int index = 0,
  String buttonText = 'Next',
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(imgPath),
      Container(
        margin: const EdgeInsets.only(top: 20),
        child: text24Normal(text: title),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(
          text: subTitle,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      _nextButton(index, controller, buttonText),
    ],
  );
}

//next button for onboarding page
Widget _nextButton(int index, PageController controller, String buttonText) {
  return Container(
    width: 325,
    height: 50,
    margin: const EdgeInsets.only(top: 70, left: 25, right: 25),
    child: inkButton(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: AppColors.primaryElement,
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ).copyWith(),
      ),
      onTap: () {
        if (index < 3) {
          controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeOut,
          );
        }
      },
    ),
  );
}
