import 'package:bookly_app/core/utils/Style.dart';
import 'package:bookly_app/core/widgets/Custom_Feature_BookImage.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';

class Bookdetailssection extends StatelessWidget {
  const Bookdetailssection({super.key, required this.bookmoddel});
  final BookModel bookmoddel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .2,
          ),
          child: FeatureBookImage(
            imageurl: bookmoddel.volumeInfo.imageLinks?.thumbnail,
            ratioheigth: 3.3,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            bookmoddel.volumeInfo.title,
            // textAlign: TextAlign.center,
            style: Style.textstyle30,
            textAlign: TextAlign.center,

            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Opacity(
          opacity: .7,
          child: Text(bookmoddel.volumeInfo.authors[0],
              // textAlign: TextAlign.center,
              style: Style.textstyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center),
        ),
        const SizedBox(
          height: 16,
        ),
        RateBook(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookmoddel.volumeInfo.averageRating ?? 0,
          count: bookmoddel.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 20,
        ),
        Bookaction(bookModel: bookmoddel),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
