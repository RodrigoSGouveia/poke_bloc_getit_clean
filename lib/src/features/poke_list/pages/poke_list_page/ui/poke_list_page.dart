import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:poke_bloc_getit_clean/src/core/dependecy_injection/dependecy_injection.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/pages/poke_list_page/ui/cubit/cubit.dart';

import 'widgets/eternal_list.dart';

class PokeListPage extends StatefulWidget {
  const PokeListPage({super.key});

  @override
  State<PokeListPage> createState() => _PokeListPageState();
}

class _PokeListPageState extends State<PokeListPage> {
  final PokeListCubit _pokeListCubit = getIt();

  @override
  void initState() {
    _pokeListCubit.getPokemonList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokeListCubit>(
      create: (context) => _pokeListCubit,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pokémanos"),
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              onPressed: _refresh,
              icon: const Icon(Icons.refresh),
            )
          ],
        ),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<PokeListCubit, PokeListState>(
      bloc: _pokeListCubit,
      builder: (context, state) {
        if (state is PokeListLoadingState) {
          return Center(
            child: Lottie.asset("assets/animations/loading.json"),
          );
        }
        if (state is PokeListSuccessfullState) {
          final list = state.pokeList.results;
          return EternalList(
            list: list,
          );
        }

        if (state is PokeListFailureState) {
          return Center(
            child: Image.asset("assets/images/pikapika.png"),
          );
        }

        return Container();
      },
    );
  }

  void _refresh() {
    _pokeListCubit.getPokemonList();
  }
}
