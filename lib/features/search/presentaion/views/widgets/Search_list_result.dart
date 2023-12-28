import 'package:bookly_app/core/widgets/CustomBestsaller_listitem.dart';
import 'package:bookly_app/core/widgets/Custom_error_message.dart';
import 'package:bookly_app/features/search/presentaion/mange/FeatchSearchBook/featch_search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListresult extends StatelessWidget {
  const SearchListresult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchSearchBookCubit, FeatchSearchBookState>(
      builder: (context, state) {
        if (state is FeatchSearchBookSuccess) {
          return ListView.builder(
              itemCount: state.searchBook.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Bestsalleritem(
                    bookModel: state.searchBook[index],
                  ),
                );
              });
        } else if (state is FeatchSearchBookFailuer) {
          return Customerror(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
