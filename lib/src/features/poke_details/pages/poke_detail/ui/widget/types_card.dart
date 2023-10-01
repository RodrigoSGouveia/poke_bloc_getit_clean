import 'package:flutter/material.dart';
import 'package:poke_bloc_getit_clean/src/core/capitalized_string.dart';
import 'package:poke_bloc_getit_clean/src/features/app/ui/widgets/poke_card.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/entities.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/pages/poke_detail/ui/widget/types_color.dart';

class TypesCard extends StatelessWidget {
  final List<TypeEntity> types;
  const TypesCard({super.key, required this.types});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: PokeCard(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text("Types:"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: types
                    .map(
                      (e) => PokeCard(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: e.type.name.type.typeColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            e.type.name.capitalize(),
                            style: TextStyle(
                                color: (e.type.name.type.typeColor!.red *
                                                0.299 +
                                            e.type.name.type.typeColor!.green *
                                                0.587 +
                                            e.type.name.type.typeColor!.blue *
                                                0.114) >
                                        186
                                    ? Colors.black
                                    : Colors.white),
                          ),
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
