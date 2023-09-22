import 'package:equatable/equatable.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/entities/poke_list_entity.dart';

abstract class PokeListState extends Equatable {
  @override
  List<Object> get props => [];
}

class PokeListInitialState extends PokeListState {
  PokeListInitialState();
}

class PokeListSuccessfullState extends PokeListState {
  late final PokeListEntity pokeList;
  PokeListSuccessfullState({required this.pokeList});
}

class PokeListFailureState extends PokeListState {
  PokeListFailureState();
}

class PokeListLoadingState extends PokeListState {
  PokeListLoadingState();
}

