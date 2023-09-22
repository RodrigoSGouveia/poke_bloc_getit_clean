import 'package:poke_bloc_getit_clean/src/features/poke_list/entities/entities.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/repositories/repositories.dart';

class PokeListUseCase {
  late final PokeListRepository pokeListRepository;

  PokeListUseCase({required this.pokeListRepository});

  Future<PokeListEntity> fetchPokeList({String? path}) {
    return path == null
        ? pokeListRepository.getListFromDatasoure()
        : pokeListRepository.getListFromDatasoure(path: path);
  }
}
