import 'package:poke_bloc_getit_clean/src/features/poke_list/models/poke_list_model.dart';

abstract class PokeListRemoteDatasource {
  Future<PokeListModel> getList({String? path});
}
