import 'package:bookly_app/core/widgets/Custom_text_field.dart';
import 'package:bookly_app/features/search/presentaion/mange/FeatchSearchBook/featch_search_book_cubit.dart';
import 'package:bookly_app/features/search/presentaion/views/widgets/Search_list_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String searchdata;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Customtextfield(
            onSubmitted: (data) {
              searchdata = data;
              BlocProvider.of<FeatchSearchBookCubit>(context)
                  .featchsearchbook(search: searchdata);
            },
            hintText: 'Search',
            icon: Icons.search,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("Search Result"),
          const SizedBox(
            height: 10,
          ),
          const Expanded(child: SearchListresult())
        ],
      ),
    );
  }
}
