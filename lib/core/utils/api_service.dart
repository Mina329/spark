import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:spark/core/utils/env.dart';

class ApiService {
  final Dio _dio;
  Map<String, dynamic> headers = {
    'Authorization': "Bearer ${Env.TMDB_API_KEY}"
  };
  ApiService({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    log(endPoint);
    var response = await _dio.get(
      "${Env.BASE_URL}$endPoint",
      options: Options(
        headers: headers,
      ),
    );
    return response.data;
  }
}
