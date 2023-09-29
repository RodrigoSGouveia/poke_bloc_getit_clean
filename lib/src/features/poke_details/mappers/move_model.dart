import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/move_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/name_url_pair_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/version_group_details_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/move_model.dart';

extension MoveEntityExtension on MoveEntity {
  MoveModel toModel() {
    return MoveModel(
      move: move.toModel(),
      versionGroupDetails: versionGroupDetails.map((e) => e.toModel()).toList(),
    );
  }
}

extension MoveModelExtension on MoveModel {
  MoveEntity toEntity() {
    return MoveEntity(
      move: move.toEntity(),
      versionGroupDetails:
          versionGroupDetails.map((e) => e.toEntity()).toList(),
    );
  }
}
