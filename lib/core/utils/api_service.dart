import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final _barseUrl = 'https://www.googleapis.com/books/v1/';

  // ApiService({required this._dio});

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_barseUrl$endPoint');

    return response.data;
  }
}
