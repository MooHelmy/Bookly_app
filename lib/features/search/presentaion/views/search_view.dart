import 'package:bookly_app/features/search/Data/repo/Search_repoimp.dart';
import 'package:bookly_app/features/search/presentaion/mange/FeatchSearchBook/featch_search_book_cubit.dart';
import 'package:bookly_app/features/search/presentaion/views/widgets/Search_view_Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeatchSearchBookCubit(searchrepo: Searchrepoimp()),
      child: const Scaffold(
        body: SafeArea(child: SearchviewBody()),
      ),
    );
  }
}
