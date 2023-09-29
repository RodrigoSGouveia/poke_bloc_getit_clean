import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/ability_meta_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/name_url_pair_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/ability_meta_model.dart';

extension AbilityMetaEntityExtension on AbilityMetaEntity {
  AbilityMetaModel toModel() {
    return AbilityMetaModel(
      ability: ability.toModel(),
      isHidden: isHidden,
      slot: slot,
    );
  }
}

extension AbilityMetaModelExtension on AbilityMetaModel {
  AbilityMetaEntity toEntity() {
    return AbilityMetaEntity(
      ability: ability.toEntity(),
      isHidden: isHidden,
      slot: slot,
    );
  }
}
