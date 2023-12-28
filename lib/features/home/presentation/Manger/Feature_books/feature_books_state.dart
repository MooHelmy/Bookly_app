part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

class FeatureBooksInitial extends FeatureBooksState {}

class FeatureBooksLoading extends FeatureBooksState {}

class FeatureBooksFailure extends FeatureBooksState {
  final String errorMessage;

  const FeatureBooksFailure({required this.errorMessage});
}

class FeatureBooksSuccess extends FeatureBooksState {
  final List<BookModel> bookslist;

  const FeatureBooksSuccess({required this.bookslist});
}
