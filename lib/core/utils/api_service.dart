import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final dio = Dio();
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var result = await dio.get('$baseUrl$endpoint');
    return result.data;
  }
}
