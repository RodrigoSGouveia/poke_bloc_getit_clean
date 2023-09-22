import 'package:poke_bloc_getit_clean/src/features/poke_list/poke_list.dart';

class PokeListRepositoryImpl implements PokeListRepository {
  late final PokeListRemoteDatasource _pokeListRemoteDatasource;

  PokeListRepositoryImpl(
      {required PokeListRemoteDatasource pokeListRemoteDatasource}) {
    _pokeListRemoteDatasource = pokeListRemoteDatasource;
  }
  @override
  Future<PokeListEntity> getListFromDatasoure({String? path}) async {
    final result = await _pokeListRemoteDatasource.getList(path: path);

    return result.toEntity();
  }
}
