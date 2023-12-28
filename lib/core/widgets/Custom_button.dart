import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CutsomButton extends StatelessWidget {
  const CutsomButton(
      {super.key,
      this.color,
      required this.text,
      this.borderRadius,
      this.background,
      this.onPressed});
  final Color? color, background;
  final String text;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: background,
        shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12)),
      ),
      child: Text(
        text,
        style: Style.textstyle20
            .copyWith(color: color, fontWeight: FontWeight.w900),
      ),
    );
  }
}
