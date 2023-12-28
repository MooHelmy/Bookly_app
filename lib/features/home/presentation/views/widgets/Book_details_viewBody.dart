import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Custom_appbarBookkdetails.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/simllar_book_section.dart';
import 'package:flutter/material.dart';

class BookdetailsBody extends StatelessWidget {
  const BookdetailsBody({super.key, required this.bookmoddel});
  final BookModel bookmoddel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomappbarBookkdetails(),
          Bookdetailssection(bookmoddel: bookmoddel),
          const Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          const Simllarbooksection(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
