import 'package:json_annotation/json_annotation.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/name_url_pair_model.dart';
part 'ability_meta_model.g.dart';

@JsonSerializable()
class AbilityMetaModel {
  final NameUrlPairModel ability;
  @JsonKey(name: "is_hidden")
  final bool isHidden;
  final int slot;

  const AbilityMetaModel({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  factory AbilityMetaModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityMetaModelFromJson(json);
}
