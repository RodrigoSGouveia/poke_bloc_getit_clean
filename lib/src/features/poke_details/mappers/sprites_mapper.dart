import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/sprites_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/sprites_model.dart';

extension SpritesEntityExtension on SpritesEntity {
  SpritesModel toModel() {
    return SpritesModel(frontDefault: frontDefault);
  }
}

extension SpritesModelExtension on SpritesModel {
  SpritesEntity toEntity() {
    return SpritesEntity(frontDefault: frontDefault);
  }
}
