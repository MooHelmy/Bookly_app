import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class Searchrepo {
  Future<Either<Failure, List<BookModel>>> featchbookSearch(
      {required String search});
}
