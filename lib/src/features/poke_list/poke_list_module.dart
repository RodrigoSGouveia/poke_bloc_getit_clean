import 'package:injectable/injectable.dart';
import 'package:poke_bloc_getit_clean/src/core/api/poke_api/poke_api_service.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/poke_list.dart';

import '../../core/dependecy_injection/dependecy_injection.dart';

@module
abstract class PokeListModule {
  @lazySingleton
  PokeListRemoteDatasource get pokeListRemoteDatasource =>
      PokeListRemoteDatasourceImpl(pokeApiService: getIt<PokeApiService>());

  @lazySingleton
  PokeListRepository get pokeListRepository => PokeListRepositoryImpl(
      pokeListRemoteDatasource: getIt<PokeListRemoteDatasource>());

  @injectable
  PokeListUseCase get pokeListUseCase =>
      PokeListUseCase(pokeListRepository: getIt());

  @injectable
  PokeListCubit get pokeListCubit => PokeListCubit(pokeListUseCase: getIt());
}
