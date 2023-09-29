import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/version_group_details_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/name_url_pair_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/version_group_details_model.dart';

extension VersionGroupDetailsEntityExtension on VersionGroupDetailsEntity {
  VersionGroupDetailsModel toModel() {
    return VersionGroupDetailsModel(
      levelLearnedAt: levelLearnedAt,
      moveLearnedMethod: moveLearnedMethod.toModel(),
      versionGroup: versionGroup.toModel(),
    );
  }
}

extension VersionGroupDetailsModelExtension on VersionGroupDetailsModel {
  VersionGroupDetailsEntity toEntity() {
    return VersionGroupDetailsEntity(
      levelLearnedAt: levelLearnedAt,
      moveLearnedMethod: moveLearnedMethod.toEntity(),
      versionGroup: versionGroup.toEntity(),
    );
  }
}
