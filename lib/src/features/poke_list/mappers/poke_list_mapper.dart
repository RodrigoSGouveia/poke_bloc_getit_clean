import 'package:poke_bloc_getit_clean/src/features/poke_list/entities/poke_list_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/mappers/list_result_mapper.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/models/poke_list_model.dart';

extension PokeListEntityExtension on PokeListEntity {
  PokeListModel toModel() {
    return PokeListModel(
      count: count,
      next: next,
      previous: previous,
      results: results.map((e) => e.toModel()).toList(),
    );
  }
}

extension PokeListModelExtension on PokeListModel {
  PokeListEntity toEntity() {
    return PokeListEntity(
      count: count,
      next: next,
      previous: previous,
      results: results.map((e) => e.toEntity()).toList(),
    );
  }
}
