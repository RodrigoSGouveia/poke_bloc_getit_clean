import 'package:equatable/equatable.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/name_url_pair_entity.dart';

class StatsEntity extends Equatable {
  final NameUrlPairEntity stat;
  final int effort;
  final int baseStat;

  const StatsEntity({
    required this.stat,
    required this.baseStat,
    required this.effort,
  });

  @override
  List<Object> get props => [
        stat,
        baseStat,
        effort,
      ];
}
