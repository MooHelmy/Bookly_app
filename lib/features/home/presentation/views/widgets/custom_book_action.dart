import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/Functions/launcher_url.dart';
import 'package:bookly_app/core/widgets/Custom_button.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class Bookaction extends StatelessWidget {
  const Bookaction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CutsomButton(
            text: 'Free',
            background: Colors.white,
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CutsomButton(
            onPressed: () {
              launchcustomurl(context, bookModel.volumeInfo.previewLink);
            },
            text: getText(bookModel),
            color: Colors.black,
            background: kColorbuttonaction,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink != null) {
      return 'Preview';
    } else {
      return 'Not Avaliable';
    }
  }
}
