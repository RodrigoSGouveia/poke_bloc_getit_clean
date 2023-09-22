import 'package:poke_bloc_getit_clean/src/core/api/api_response.dart';

abstract class ApiClient {
  Future<ApiResponse> get({
    required String path,
    Map<String, dynamic> queryParams = const {},
  });

  //patch, post, delete, download ...
}
