import 'package:json_annotation/json_annotation.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/name_url_pair_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/version_group_details_model.dart';

part 'move_model.g.dart';

@JsonSerializable()
class MoveModel {
  final NameUrlPairModel move;
  @JsonKey(name: "version_group_details")
  final List<VersionGroupDetailsModel> versionGroupDetails;

  const MoveModel({
    required this.move,
    required this.versionGroupDetails,
  });

  factory MoveModel.fromJson(Map<String, dynamic> json) =>
      _$MoveModelFromJson(json);
}
