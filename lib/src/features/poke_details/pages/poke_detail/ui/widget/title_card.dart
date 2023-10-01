import 'package:flutter/material.dart';
import 'package:poke_bloc_getit_clean/src/core/capitalized_string.dart';
import 'package:poke_bloc_getit_clean/src/features/app/ui/widgets/poke_card.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/entities.dart';

class TitleCard extends StatelessWidget {
  final PokemonEntity pkmEntity;

  const TitleCard({super.key, required this.pkmEntity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: PokeCard(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            PokeCard(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Image.network(
                pkmEntity.sprites.frontDefault,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name: ${pkmEntity.name.capitalize()}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Height: ${pkmEntity.height / 10} m"),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Weight: ${pkmEntity.weight.toInt()} kg"),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Base Experiênce: ${pkmEntity.baseExperience} xp"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
