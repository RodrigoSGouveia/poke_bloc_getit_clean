import 'package:poke_bloc_getit_clean/src/features/poke_details/models/pokemon_model.dart';

abstract class PokeDetailsRemoteDataSource {
  Future<PokemonModel> getPokemon({required String path});
}
