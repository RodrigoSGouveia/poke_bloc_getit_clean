import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/pokemon_entity.dart';

abstract class PokeDetailsRepository {
  Future<PokemonEntity> getPokemonDetails({required String path});
}
