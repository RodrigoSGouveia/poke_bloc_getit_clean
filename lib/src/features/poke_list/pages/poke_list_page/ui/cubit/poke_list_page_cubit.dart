import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/poke_list.dart';

class PokeListCubit extends Cubit<PokeListState> {
  late final PokeListUseCase _pokeListUseCase;

  PokeListCubit({
    required PokeListUseCase pokeListUseCase,
  }) : super(PokeListInitialState()) {
    _pokeListUseCase = pokeListUseCase;
  }

  void getPokemonList({PokeListEntity? existingList}) async {
    emit(PokeListLoadingState());
    try {
      final newResults =
          await _pokeListUseCase.fetchPokeList(path: existingList?.next);
      existingList =
          _prepareList(existingList: existingList, newResults: newResults);

      emit(PokeListSuccessfullState(pokeList: existingList));
    } on Exception {
      emit(PokeListFailureState());
    }
  }

  PokeListEntity _prepareList({
    PokeListEntity? existingList,
    PokeListEntity? newResults,
  }) {
    if (existingList != null) {
      final result = existingList.results;
      result.addAll(newResults!.results);

      return newResults.copyWith(
          count: newResults.count + existingList.count, results: result);
    } else {
      return newResults!;
    }
  }
}
