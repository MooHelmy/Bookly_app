import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield(
      {super.key, required this.hintText, this.icon, this.onSubmitted});
  final String hintText;
  final IconData? icon;
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
          suffixIcon: Opacity(
              opacity: .8,
              child: Icon(
                icon,
                size: 20,
              )),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}
