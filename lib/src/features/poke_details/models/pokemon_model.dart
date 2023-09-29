import 'package:json_annotation/json_annotation.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/ability_meta_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/game_indices_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/move_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/name_url_pair_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/sprites_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/type_model.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class PokemonModel {
  final int id;
  final String name;
  final List<TypeModel> types;
  final double height;
  final double weight;
  final List<AbilityMetaModel> abilities;
  final List<NameUrlPairModel> forms;
  @JsonKey(name: "base_experience")
  final double? baseExperience;
  @JsonKey(name: "location_area_encounters")
  final String locationAreaEncounters;
  final NameUrlPairModel species;
  final int order;
  final SpritesModel sprites;
  @JsonKey(name: "is_default")
  final bool isDefault;
  @JsonKey(name: "game_indices")
  final List<GameIndicesModel> gameIndices;
  final List<MoveModel> moves;

  const PokemonModel({
    required this.id,
    required this.name,
    required this.types,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.forms,
    this.baseExperience,
    required this.locationAreaEncounters,
    required this.moves,
    required this.order,
    required this.species,
    required this.sprites,
    required this.isDefault,
    required this.gameIndices,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}
