import 'package:injectable/injectable.dart';
import 'package:poke_bloc_getit_clean/src/core/api/api_client.dart';
import 'package:poke_bloc_getit_clean/src/core/api/poke_api/poke_api_service.dart';
import 'package:poke_bloc_getit_clean/src/core/api/poke_api/poke_api_service_impl.dart';

import '../../dependecy_injection/dependecy_injection.dart';

@module
abstract class PokeApiServiceModule {
  @lazySingleton
  PokeApiService get pokeApiService =>
      PokeApiServiceImpl(apiClient: getIt<ApiClient>());
}
