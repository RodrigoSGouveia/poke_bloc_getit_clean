// import 'package:poke_bloc_getit_clean/src/features/home/entities/poke_list_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/models/poke_list_model.dart';

abstract class PokeApiService {
  Future<PokeListModel> getPokemonList({String? path});

  // Future<PokemonEntity> getPokemonEntity();
}
