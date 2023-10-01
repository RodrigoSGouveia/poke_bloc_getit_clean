import 'package:flutter/material.dart';
import 'package:poke_bloc_getit_clean/src/core/capitalized_string.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/entities.dart';

class MovesCard extends StatelessWidget {
  final PokemonEntity pkmEntity;

  const MovesCard({super.key, required this.pkmEntity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            children: pkmEntity.moves
                .map(
                  (e) => SizedBox(
                    width: double.maxFinite,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text("Move name:"),
                            Text(e.move.name.capitalize()),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Learned at level:"),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(e.versionGroupDetails.first.levelLearnedAt
                                .toString()),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("In:"),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(e.versionGroupDetails.first.moveLearnedMethod
                                .name
                                .capitalize()),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

/*

*/