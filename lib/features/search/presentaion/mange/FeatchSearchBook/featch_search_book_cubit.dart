import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/Data/repo/Search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featch_search_book_state.dart';

class FeatchSearchBookCubit extends Cubit<FeatchSearchBookState> {
  FeatchSearchBookCubit({required this.searchrepo})
      : super(FeatchSearchBookInitial());
  final Searchrepo searchrepo;
  featchsearchbook({required String search}) async {
    emit(FeatchSearchBookLoading());
    var result = await searchrepo.featchbookSearch(search: search);
    result.fold((failure) {
      emit(FeatchSearchBookFailuer(errorMessage: failure.errormessage));
    }, (books) {
      emit(FeatchSearchBookSuccess(searchBook: books));
    });
  }
}
