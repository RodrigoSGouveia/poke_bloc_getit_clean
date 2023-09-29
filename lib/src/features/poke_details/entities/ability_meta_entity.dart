import 'package:equatable/equatable.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/name_url_pair_entity.dart';

class AbilityMetaEntity extends Equatable {
  final NameUrlPairEntity ability;
  final bool isHidden;
  final int slot;

  const AbilityMetaEntity({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  @override
  List<Object?> get props => [
        ability,
        isHidden,
        slot,
      ];
}
