part of 'featch_simller_book_cubit.dart';

sealed class FeatchSimllerBookState extends Equatable {
  const FeatchSimllerBookState();

  @override
  List<Object> get props => [];
}

class FeatchSimllerBookInitial extends FeatchSimllerBookState {}

class FeatchSimllerBookLoading extends FeatchSimllerBookState {}

class FeatchSimllerBookFailuer extends FeatchSimllerBookState {
  final String errormessage;

  const FeatchSimllerBookFailuer({required this.errormessage});
}

class FeatchSimllerBookSuccess extends FeatchSimllerBookState {
  final List<BookModel> booksimaller;

  const FeatchSimllerBookSuccess({required this.booksimaller});
}
