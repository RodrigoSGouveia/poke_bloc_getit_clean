import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/game_indices_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/name_url_pair_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/game_indices_model.dart';

extension GameIndicesEntityExtension on GameIndicesEntity {
  GameIndicesModel toModel() {
    return GameIndicesModel(
      gameIndex: gameIndex,
      version: version.toModel(),
    );
  }
}

extension GameIndicesModelExtension on GameIndicesModel {
  GameIndicesEntity toEntity() {
    return GameIndicesEntity(
      gameIndex: gameIndex,
      version: version.toEntity(),
    );
  }
}
