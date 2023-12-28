import 'package:flutter/material.dart';

import '../../../../../core/utils/Style.dart';

class RateBook extends StatelessWidget {
  const RateBook(
      {super.key,
      this.onPressed,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});
  final void Function()? onPressed;
  final num rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '$rating',
          style: Style.textstyle16,
        ),
        const SizedBox(
          width: 4,
        ),
        Opacity(
            opacity: .5,
            child: Text(
              '($count)',
              style: Style.textstyle14,
            ))
      ],
    );
  }
}
