part of 'featch_search_book_cubit.dart';

sealed class FeatchSearchBookState extends Equatable {
  const FeatchSearchBookState();

  @override
  List<Object> get props => [];
}

class FeatchSearchBookInitial extends FeatchSearchBookState {}

class FeatchSearchBookLoading extends FeatchSearchBookState {}

class FeatchSearchBookFailuer extends FeatchSearchBookState {
  final String errorMessage;

  const FeatchSearchBookFailuer({required this.errorMessage});
}

class FeatchSearchBookSuccess extends FeatchSearchBookState {
  final List<BookModel> searchBook;

  const FeatchSearchBookSuccess({required this.searchBook});
}
