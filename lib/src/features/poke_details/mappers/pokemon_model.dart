import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/pokemon_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/ability_meta_mapper.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/game_indices_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/move_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/name_url_pair_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/sprites_mapper.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/type_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/pokemon_model.dart';

extension PokemonEntityExtension on PokemonEntity {
  PokemonModel toModel() {
    return PokemonModel(
      abilities: abilities.map((e) => e.toModel()).toList(),
      baseExperience: baseExperience,
      forms: forms.map((e) => e.toModel()).toList(),
      sprites: sprites.toModel(),
      gameIndices: gameIndices.map((e) => e.toModel()).toList(),
      height: height,
      id: id,
      isDefault: isDefault,
      locationAreaEncounters: locationAreaEncounters,
      moves: moves.map((e) => e.toModel()).toList(),
      name: name,
      order: order,
      species: species.toModel(),
      types: types.map((e) => e.toModel()).toList(),
      weight: weight,
    );
  }
}

extension PokemonModelExtension on PokemonModel {
  PokemonEntity toEntity() {
    return PokemonEntity(
      abilities: abilities.map((e) => e.toEntity()).toList(),
      baseExperience: baseExperience,
      forms: forms.map((e) => e.toEntity()).toList(),
      sprites: sprites.toEntity(),
      gameIndices: gameIndices.map((e) => e.toEntity()).toList(),
      height: height,
      id: id,
      isDefault: isDefault,
      locationAreaEncounters: locationAreaEncounters,
      moves: moves.map((e) => e.toEntity()).toList(),
      name: name,
      order: order,
      species: species.toEntity(),
      types: types.map((e) => e.toEntity()).toList(),
      weight: weight,
    );
  }
}
