import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomappbarBookkdetails extends StatelessWidget {
  const CustomappbarBookkdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.close,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
            )),
      ],
    );
  }
}
