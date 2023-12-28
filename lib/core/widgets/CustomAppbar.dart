import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Assets.imagesLogo,
            height: 20,
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.search),
            iconSize: 20,
          )
        ],
      ),
    );
  }
}
