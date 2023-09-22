import 'package:poke_bloc_getit_clean/src/features/poke_list/entities/poke_list_entity.dart';

abstract class PokeListRepository {
  Future<PokeListEntity> getListFromDatasoure({String path});
}
