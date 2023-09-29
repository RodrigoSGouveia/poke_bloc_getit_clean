import 'package:equatable/equatable.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/ability_meta_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/game_indices_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/move_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/name_url_pair_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/sprites_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/type_entity.dart';

class PokemonEntity extends Equatable {
  final int id;
  final String name;
  final List<TypeEntity> types;
  final double height;
  final double weight;
  final List<AbilityMetaEntity> abilities;
  final List<NameUrlPairEntity> forms;
  final double? baseExperience;
  final String locationAreaEncounters;
  final NameUrlPairEntity species;
  final int order;
  final SpritesEntity sprites;
  final bool isDefault;
  final List<GameIndicesEntity> gameIndices;
  final List<MoveEntity> moves;

  const PokemonEntity({
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

  @override
  List<Object?> get props => [
        id,
        name,
        types,
        height,
        weight,
        abilities,
        forms,
        baseExperience,
        locationAreaEncounters,
        moves,
        order,
        species,
        sprites,
        isDefault,
        gameIndices,
      ];
}
