import 'package:poke_bloc_getit_clean/src/features/poke_list/entities/list_result_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/models/list_result_model.dart';

extension ListResultEntityExtension on ListResultEntity {
  ListResultModel toModel() {
    return ListResultModel(name: name, url: url);
  }
}

extension ListResultModelExtension on ListResultModel {
  ListResultEntity toEntity() {
    return ListResultEntity(name: name, url: url);
  }
}
