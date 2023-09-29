import 'package:json_annotation/json_annotation.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/name_url_pair_model.dart';

part 'game_indices_model.g.dart';

@JsonSerializable()
class GameIndicesModel {
  @JsonKey(name: "game_index")
  final int gameIndex;
  final NameUrlPairModel version;

  const GameIndicesModel({
    required this.gameIndex,
    required this.version,
  });

  factory GameIndicesModel.fromJson(Map<String, dynamic> json) =>
      _$GameIndicesModelFromJson(json);
}
