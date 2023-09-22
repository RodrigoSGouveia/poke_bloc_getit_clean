import 'package:poke_bloc_getit_clean/src/core/api/poke_api/poke_api_service.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/models/poke_list_model.dart';

import 'poke_list_remote_datasource.dart';

class PokeListRemoteDatasourceImpl implements PokeListRemoteDatasource {
  late final PokeApiService _pokeApiService;

  PokeListRemoteDatasourceImpl({required PokeApiService pokeApiService}) {
    _pokeApiService = pokeApiService;
  }

  @override
  Future<PokeListModel> getList({String? path}) async {
    final result = await _pokeApiService.getPokemonList(path: path);
    return result;
  }
}
