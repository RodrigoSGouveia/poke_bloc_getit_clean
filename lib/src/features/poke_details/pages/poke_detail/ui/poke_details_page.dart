import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:poke_bloc_getit_clean/src/core/dependecy_injection/dependecy_injection.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/entities.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/pages/poke_detail/ui/cubit/poke_details_cubit.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/pages/poke_detail/ui/cubit/poke_details_state.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/pages/poke_detail/ui/widget/abilities_card.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/pages/poke_detail/ui/widget/moves_card.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/pages/poke_detail/ui/widget/stats_card.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/pages/poke_detail/ui/widget/title_card.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/pages/poke_detail/ui/widget/types_card.dart';

class PokeDetailsPage extends StatefulWidget {
  final String path;
  const PokeDetailsPage({super.key, required this.path});

  @override
  State<PokeDetailsPage> createState() => _PokeDetailsPageState();
}

class _PokeDetailsPageState extends State<PokeDetailsPage>
    with TickerProviderStateMixin {
  final PokeDetailsCubit _pokeDetailsCubit = getIt();
  late TabController _tabController;

  @override
  void initState() {
    _pokeDetailsCubit.fetchPokemonDetail(path: widget.path);
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokeDetailsCubit>(
      create: (context) => _pokeDetailsCubit,
      child: BlocBuilder<PokeDetailsCubit, PokeDetailsState>(
        builder: (context, state) {
          if (state is PokeDetailsSuccessfullState) {
            return _buildSuccessfull(pkmEntity: state.pokemonEntity);
          }

          if (state is PokeDetailsLoadingState ||
              state is PokeDetailsInitialState) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Quem é esse pokemon?"),
              ),
              body: Center(
                child: Lottie.asset('assets/animations/loading.json'),
              ),
            );
          }

          if (state is PokeDetailsFailureState) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Não respondeu a tempo, e algo deu errado"),
              ),
              body: Center(
                  child: LottieBuilder.asset("assets/animations/error.json")),
            );
          }

          return const Placeholder();
        },
      ),
    );
  }

  Widget _buildSuccessfull({required PokemonEntity pkmEntity}) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pkmEntity.name),
        backgroundColor: Colors.red,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Center(
              child: SizedBox(
                width: double.maxFinite,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Pokemano"),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: double.maxFinite,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Moves"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.red[100],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TabBarView(
          controller: _tabController,
          children: [
            SingleChildScrollView(
              primary: true,
              child: Column(
                children: [
                  TitleCard(pkmEntity: pkmEntity),
                  TypesCard(types: pkmEntity.types),
                  AbilitiesCard(abilities: pkmEntity.abilities),
                  StatsCard(stats: pkmEntity.stats)
                ],
              ),
            ),
            MovesCard(pkmEntity: pkmEntity),
          ],
        ),
      ),
    );
  }
}
/*

*/