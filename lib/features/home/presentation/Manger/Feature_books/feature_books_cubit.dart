import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/Data/repos/Home_reop.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homereop) : super(FeatureBooksInitial());
  final Homereop homereop;
  Future<void> getBooks() async {
    emit(FeatureBooksLoading());
    var result = await homereop.fetchFeaturerBook();
    result.fold((failure) {
      emit(FeatureBooksFailure(errorMessage: failure.errormessage));
    }, (books) {
      emit(FeatureBooksSuccess(bookslist: books));
    });
  }
}
