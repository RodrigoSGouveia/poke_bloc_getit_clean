import 'package:flutter/material.dart';
import 'package:poke_bloc_getit_clean/src/core/capitalized_string.dart';
import 'package:poke_bloc_getit_clean/src/features/app/ui/widgets/poke_card.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/entities.dart';

class StatsCard extends StatelessWidget {
  final List<StatsEntity> stats;
  const StatsCard({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: PokeCard(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 1.2,
                  maxCrossAxisExtent: 250,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              children: stats
                  .map(
                    (e) => SizedBox(
                      width: double.maxFinite,
                      child: PokeCard(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(e.stat.name.capitalize()),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                e.baseStat.toString(),
                                style: const TextStyle(fontSize: 30),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text("Effort:"),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(e.effort.toString()),
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
      ),
    );
  }
}
