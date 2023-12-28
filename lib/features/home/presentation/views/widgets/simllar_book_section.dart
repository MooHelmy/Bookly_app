import 'package:bookly_app/features/home/presentation/views/widgets/simaller_book_list.dart';
import 'package:flutter/material.dart';

class Simllarbooksection extends StatelessWidget {
  const Simllarbooksection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          // textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 16,
        ),
        Simllarbooklistview()
      ],
    );
  }
}
