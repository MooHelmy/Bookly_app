import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/Sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewbody extends StatelessWidget {
  const SplashViewbody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          Assets.imagesLogo,
        ),
        const SlidingText()
      ],
    );
  }
}
