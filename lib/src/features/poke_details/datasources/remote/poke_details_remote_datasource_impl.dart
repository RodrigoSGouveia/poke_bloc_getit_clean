import 'package:poke_bloc_getit_clean/src/core/api/poke_api/poke_api_service.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/datasources/remote/poke_details_remote_datasource.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/pokemon_model.dart';

class PokeDetailsRemoteDataSourceImpl implements PokeDetailsRemoteDataSource {
  late final PokeApiService _pokeApiService;

  PokeDetailsRemoteDataSourceImpl({required PokeApiService pokeApiService}) {
    _pokeApiService = pokeApiService;
  }

  @override
  Future<PokemonModel> getPokemon({required String path}) async {
    final result = await _pokeApiService.getPokemon(path: path);
    return result;
  }
}
