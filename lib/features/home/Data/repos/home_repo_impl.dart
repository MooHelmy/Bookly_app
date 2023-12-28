import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/Data/repos/Home_reop.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Homerepoimpl implements Homereop {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestsalerBook() async {
    try {
      var data = await ApiService()
          .get(endpoint: 'volumes??Filtering=free-ebooks&q=computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioerror(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturerBook() async {
    try {
      var data = await ApiService().get(
          endpoint:
              'volumes?Sorting=newest&?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      print('length=${books.length}');
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioerror(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchsamillerBook(
      {required String categoray}) async {
    try {
      var data = await ApiService().get(
          endpoint:
              'volumes?Sorting=relevance&Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      print('length=${books.length}');
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioerror(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
