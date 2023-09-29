import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/type_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/name_url_pair_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/type_model.dart';

extension TypeEntityExtension on TypeEntity {
  TypeModel toModel() {
    return TypeModel(
      slot: slot,
      type: type.toModel(),
    );
  }
}

extension TypeModelExtension on TypeModel {
  TypeEntity toEntity() {
    return TypeEntity(
      slot: slot,
      type: type.toEntity(),
    );
  }
}
