import 'package:bookly_app/core/widgets/Custom_error_message.dart';
import 'package:bookly_app/features/home/presentation/Manger/Feature_books/feature_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/Bookdetails_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../core/widgets/Custom_Feature_BookImage.dart';

class FeatureBooklistview extends StatelessWidget {
  const FeatureBooklistview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              itemCount: state.bookslist.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const BookdetailsView(),
                          arguments: state.bookslist[index]);
                    },
                    child: FeatureBookImage(
                        imageurl: state
                            .bookslist[index].volumeInfo.imageLinks?.thumbnail),
                  ),
                );
              },
            ),
          );
        } else if (state is FeatureBooksFailure) {
          return Customerror(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
