import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_learning_platform/pages/welcome/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class WelcomePage extends ConsumerWidget {
  WelcomePage({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          //showing welcome pages
          PageView(
            onPageChanged: (value) {
              ref.read(indexProvider.notifier).state = value;
            },
            controller: _controller,
            children: [
              appOnboardingPage(
                _controller,
                imgPath: 'assets/images/reading.png',
                title: 'Learn Anytime',
                subTitle:
                    'Lorem ipsum dolor sit amet. Minim laborum veniam exercitation eu aute laborum magna sit.',
                index: 1,
              ),
              appOnboardingPage(
                _controller,
                imgPath: 'assets/images/boy.png',
                title: 'Build Your Skill',
                subTitle:
                    'Lorem ipsum dolor sit amet. Minim laborum veniam exercitation eu aute laborum magna sit.',
                index: 2,
              ),
              appOnboardingPage(_controller,
                  imgPath: 'assets/images/man.png',
                  title: 'Increase Your Knowledge',
                  index: 3,
                  buttonText: 'Get Started'),
            ],
          ),

          //showing dot indicator
          Positioned(
            bottom: 70,
            child: DotsIndicator(
              dotsCount: 3,
              position: index,
              mainAxisAlignment: MainAxisAlignment.center,
              decorator: const DotsDecorator(
                size: Size.square(8),
                activeSize: Size(18, 8),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
