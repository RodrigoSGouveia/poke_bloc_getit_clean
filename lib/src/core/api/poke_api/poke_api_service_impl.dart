import 'package:flutter/foundation.dart';
import 'package:poke_bloc_getit_clean/src/core/api/api_client.dart';
import 'package:poke_bloc_getit_clean/src/core/api/poke_api/api_contants.dart';
import 'package:poke_bloc_getit_clean/src/core/api/poke_api/poke_api_service.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/pokemon_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/models/poke_list_model.dart';

class PokeApiServiceImpl implements PokeApiService {
  late final ApiClient _apiClient;

  PokeApiServiceImpl({required ApiClient apiClient}) {
    _apiClient = apiClient;
  }

  @override
  Future<PokeListModel> getPokemonList({String? path}) async {
    final response = await _apiClient.get(
        path: path ?? ApiConstants.pokeListUrl,
        queryParams: {"limit": "100000000", "offset": "0"});
    return compute(PokeListModel.fromJson, response.data);
  }

  @override
  Future<PokemonModel> getPokemon({required String path}) async {
    final response = await _apiClient.get(path: path);
    return compute(PokemonModel.fromJson, response.data);
  }
}
