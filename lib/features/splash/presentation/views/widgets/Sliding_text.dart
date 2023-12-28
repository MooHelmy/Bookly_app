import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: AnimatedSplashScreen(
        backgroundColor: kprimaryColors,
        pageTransitionType: PageTransitionType.bottomToTop,
        splashTransition: SplashTransition.slideTransition,
        animationDuration: const Duration(seconds: 2),
        splash: const Text(
          ' Read Free Books ',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        nextScreen: const HomeView(),
      ),
    );
  }
}
