import 'package:json_annotation/json_annotation.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/name_url_pair_model.dart';
part 'version_group_details_model.g.dart';

@JsonSerializable()
class VersionGroupDetailsModel {
  @JsonKey(name: "level_learned_at")
  final int levelLearnedAt;
  @JsonKey(name: "move_learn_method")
  final NameUrlPairModel moveLearnedMethod;
  @JsonKey(name: "version_group")
  final NameUrlPairModel versionGroup;

  const VersionGroupDetailsModel({
    required this.levelLearnedAt,
    required this.moveLearnedMethod,
    required this.versionGroup,
  });

  factory VersionGroupDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailsModelFromJson(json);
}
