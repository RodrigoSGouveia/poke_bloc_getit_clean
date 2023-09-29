import 'package:equatable/equatable.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/pokemon_entity.dart';

abstract class PokeDetailsState extends Equatable {
  @override
  List<Object> get props => [];
}

class PokeDetailsInitialState extends PokeDetailsState {
  PokeDetailsInitialState();
}

class PokeDetailsLoadingState extends PokeDetailsState {
  PokeDetailsLoadingState();
}

class PokeDetailsSuccessfullState extends PokeDetailsState {
  final PokemonEntity pokemonEntity;
  PokeDetailsSuccessfullState({required this.pokemonEntity});
}

class PokeDetailsFailureState extends PokeDetailsState {
  PokeDetailsFailureState();
}
