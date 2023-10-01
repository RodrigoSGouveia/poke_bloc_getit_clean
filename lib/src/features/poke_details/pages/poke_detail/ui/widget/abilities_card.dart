import 'package:flutter/material.dart';
import 'package:poke_bloc_getit_clean/src/core/capitalized_string.dart';
import 'package:poke_bloc_getit_clean/src/features/app/ui/widgets/poke_card.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/entities.dart';

class AbilitiesCard extends StatelessWidget {
  final List<AbilityMetaEntity> abilities;

  const AbilitiesCard({super.key, required this.abilities});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: PokeCard(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text("Abilities:"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: abilities
                    .map(
                      (e) => PokeCard(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(e.ability.name.capitalize()),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
