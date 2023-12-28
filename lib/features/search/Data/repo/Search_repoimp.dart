import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/Data/repo/Search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Searchrepoimp implements Searchrepo {
  @override
  Future<Either<Failure, List<BookModel>>> featchbookSearch(
      {required String search}) async {
    try {
      var data = await ApiService().get(
          endpoint:
              'volumes?Sorting=newest&?Filtering=free-ebooks&q=subject:$search');
      List<BookModel> searchbooks = [];
      for (var item in data['items']) {
        searchbooks.add(BookModel.fromJson(item));
      }
      print('length=${searchbooks.length}');
      return right(searchbooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioerror(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
