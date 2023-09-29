import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/pokemon_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/repositories/poke_details_repository.dart';

class PokeDetailsUseCase {
  late final PokeDetailsRepository _pokeDetailsRepository;

  PokeDetailsUseCase({required PokeDetailsRepository pokeDetailsRepository}) {
    _pokeDetailsRepository = pokeDetailsRepository;
  }

  Future<PokemonEntity> fetchPokemonDetail({required String path}) {
    return _pokeDetailsRepository.getPokemonDetails(path: path);
  }
}
