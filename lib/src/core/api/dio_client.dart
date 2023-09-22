import 'package:flutter/foundation.dart';
import 'package:poke_bloc_getit_clean/src/core/api/api_client.dart';
import "package:dio/dio.dart";
import 'package:poke_bloc_getit_clean/src/core/api/api_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient implements ApiClient {
  late final Dio _dio;

  DioClient({
    required Dio dio,
    List<Interceptor> interceptors = const [],
  }) {
    _dio = dio;

    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'charset': 'utf-8',
    };

    if (kDebugMode) {
      _dio.interceptors.add(PrettyDioLogger(
        responseBody: true,
        requestBody: true,
      ));
    }

    _dio.interceptors.addAll(interceptors);
  }

  @override
  Future<ApiResponse> get({
    required String path,
    Map<String, dynamic> queryParams = const {},
  }) async {
    final response = await _dio.get(path, queryParameters: queryParams);

    return ApiResponse(
      statusCode: response.statusCode,
      data: response.data,
    );
  }
}
