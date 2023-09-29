import 'package:equatable/equatable.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/name_url_pair_entity.dart';

class VersionGroupDetailsEntity extends Equatable {
  final int levelLearnedAt;
  final NameUrlPairEntity moveLearnedMethod;
  final NameUrlPairEntity versionGroup;

  const VersionGroupDetailsEntity({
    required this.levelLearnedAt,
    required this.moveLearnedMethod,
    required this.versionGroup,
  });

  @override
  List<Object> get props => [
        levelLearnedAt,
        moveLearnedMethod,
        versionGroup,
      ];
}
