import 'package:equatable/equatable.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/entities/list_result_entity.dart';

class PokeListEntity extends Equatable {
  final int count;
  final String? next;
  final String? previous;
  final List<ListResultEntity> results;

  const PokeListEntity({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  PokeListEntity copyWith({
    int? count,
    String? next,
    String? previous,
    List<ListResultEntity>? results,
  }) {
    return PokeListEntity(
        count: count ?? this.count,
        next: next ?? this.next,
        previous: previous ?? this.previous,
        results: results ?? this.results);
  }

  @override
  List<Object?> get props => [
        count,
        next,
        previous,
        results,
      ];
}
