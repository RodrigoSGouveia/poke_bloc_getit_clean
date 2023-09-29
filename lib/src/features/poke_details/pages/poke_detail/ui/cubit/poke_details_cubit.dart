import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/pages/poke_detail/ui/cubit/poke_details_state.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/usecases/poke_details_usecase.dart';

class PokeDetailsCubit extends Cubit<PokeDetailsState> {
  late final PokeDetailsUseCase _pokeDetailsUseCase;

  PokeDetailsCubit({required PokeDetailsUseCase pokeDetailsUseCase})
      : super(PokeDetailsInitialState()) {
    _pokeDetailsUseCase = pokeDetailsUseCase;
  }

  void fetchPokemonDetail({required String path}) async {
    emit(PokeDetailsLoadingState());

    try {
      final results = await _pokeDetailsUseCase.fetchPokemonDetail(path: path);

      emit(PokeDetailsSuccessfullState(pokemonEntity: results));
    } on Exception {
      emit(PokeDetailsFailureState());
    }
  }
}
