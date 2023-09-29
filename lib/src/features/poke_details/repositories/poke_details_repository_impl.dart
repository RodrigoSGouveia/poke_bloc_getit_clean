import 'package:poke_bloc_getit_clean/src/features/poke_details/datasources/remote/poke_details_remote_datasource.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/pokemon_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/pokemon_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/repositories/poke_details_repository.dart';

class PokeDetailsRepositoryImpl implements PokeDetailsRepository {
  late final PokeDetailsRemoteDataSource _pokeDetailsRemoteDataSource;

  PokeDetailsRepositoryImpl(
      {required PokeDetailsRemoteDataSource pokeDetailsRemoteDataSource}) {
    _pokeDetailsRemoteDataSource = pokeDetailsRemoteDataSource;
  }

  @override
  Future<PokemonEntity> getPokemonDetails({required String path}) async {
    final result = await _pokeDetailsRemoteDataSource.getPokemon(path: path);
    return result.toEntity();
  }
}
