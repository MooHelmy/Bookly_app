import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/Data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/Manger/cubit/featch_simller_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book_details_viewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookdetailsView extends StatelessWidget {
  const BookdetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    BookModel bookModel =
        ModalRoute.of(context)!.settings.arguments as BookModel;
    return BlocProvider(
      create: (context) => FeatchSimllerBookCubit(Homerepoimpl())
        ..featchSillarbook(cateory: bookModel.volumeInfo.categories![0]),
      child: Scaffold(
        body: SafeArea(
            child: BookdetailsBody(
          bookmoddel: bookModel,
        )),
      ),
    );
  }
}
