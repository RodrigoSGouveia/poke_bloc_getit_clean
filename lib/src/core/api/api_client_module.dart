import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_bloc_getit_clean/src/core/api/api_client.dart';
import 'package:poke_bloc_getit_clean/src/core/api/dio_client.dart';
import 'package:poke_bloc_getit_clean/src/core/api/poke_api/api_contants.dart';

import '../dependecy_injection/injector.dart';

@module
abstract class ApiClientModule {
  @lazySingleton
  Dio get dioDev => Dio(BaseOptions(baseUrl: ApiConstants.baseURl));

  @lazySingleton
  ApiClient get apiClient => DioClient(
        dio: getIt(),
        interceptors: [],
      );
}
