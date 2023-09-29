import 'package:poke_bloc_getit_clean/src/features/poke_details/models/pokemon_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/models/poke_list_model.dart';

abstract class PokeApiService {
  Future<PokeListModel> getPokemonList({String? path});

  Future<PokemonModel> getPokemon({required String path});
}
