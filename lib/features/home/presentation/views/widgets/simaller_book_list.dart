import 'package:bookly_app/core/widgets/Custom_Feature_BookImage.dart';
import 'package:bookly_app/core/widgets/Custom_error_message.dart';
import 'package:bookly_app/features/home/presentation/Manger/cubit/featch_simller_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Simllarbooklistview extends StatelessWidget {
  const Simllarbooklistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchSimllerBookCubit, FeatchSimllerBookState>(
      builder: (context, state) {
        if (state is FeatchSimllerBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.booksimaller.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: FeatureBookImage(
                      ratiowidth: 2.6,
                      circle: 16,
                      imageurl: state.booksimaller[index].volumeInfo.imageLinks
                          ?.thumbnail),
                );
              },
            ),
          );
        } else if (state is FeatchSimllerBookFailuer) {
          return Customerror(errorMessage: state.errormessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
