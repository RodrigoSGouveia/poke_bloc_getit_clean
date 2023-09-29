import 'package:equatable/equatable.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/name_url_pair_entity.dart';

class GameIndicesEntity extends Equatable {
  final int gameIndex;
  final NameUrlPairEntity version;

  const GameIndicesEntity({
    required this.gameIndex,
    required this.version,
  });

  @override
  List<Object> get props => [
        gameIndex,
        version,
      ];
}
