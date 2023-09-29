import 'package:equatable/equatable.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/name_url_pair_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/version_group_details_entity.dart';

class MoveEntity extends Equatable {
  final NameUrlPairEntity move;
  final List<VersionGroupDetailsEntity> versionGroupDetails;

  const MoveEntity({
    required this.move,
    required this.versionGroupDetails,
  });

  @override
  List<Object> get props => [
        move,
        versionGroupDetails,
      ];
}
