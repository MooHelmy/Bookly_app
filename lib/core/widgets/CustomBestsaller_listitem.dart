import 'package:bookly_app/core/widgets/Custom_Feature_BookImage.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/Bookdetails_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/home/presentation/views/widgets/rating.dart';
import '../utils/Style.dart';

class Bestsalleritem extends StatelessWidget {
  const Bestsalleritem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const BookdetailsView(),
            transition: Transition.leftToRight, arguments: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            FeatureBookImage(
              imageurl: bookModel.volumeInfo.imageLinks?.thumbnail,
              ratiowidth: 2.7,
              ratioheigth: 4,
            ),
            const SizedBox(
              width: 25,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title,
                      style: Style.textstyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Opacity(
                    opacity: .3,
                    child: Text(
                      (bookModel.volumeInfo.authors[0]),
                      style: Style.textstyle14.copyWith(),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Style.textstyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      RateBook(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
