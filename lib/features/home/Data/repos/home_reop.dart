import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class Homereop {
  Future<Either<Failure, List<BookModel>>> fetchBestsalerBook();
  Future<Either<Failure, List<BookModel>>> fetchFeaturerBook();
  Future<Either<Failure, List<BookModel>>> fetchsamillerBook(
      {required String categoray});
}
