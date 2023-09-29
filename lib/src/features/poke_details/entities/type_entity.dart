import 'package:equatable/equatable.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/name_url_pair_entity.dart';

class TypeEntity extends Equatable {
  final int slot;
  final NameUrlPairEntity type;

  const TypeEntity({required this.slot, required this.type});

  @override
  List<Object> get props => [slot, type];
}
