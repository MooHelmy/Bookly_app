import 'package:bookly_app/core/utils/Style.dart';
import 'package:flutter/material.dart';

class Customerror extends StatelessWidget {
  const Customerror({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: Style.textstyle16,
    );
  }
}
