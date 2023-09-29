import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/stats_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/mappers/name_url_pair_model.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/stats_model.dart';

extension StatsEntityExtension on StatsEntity {
  StatsModel toModel() {
    return StatsModel(
      baseStat: baseStat,
      effort: effort,
      stat: stat.toModel(),
    );
  }
}

extension StatsModelExtension on StatsModel {
  StatsEntity toEntity() {
    return StatsEntity(
      baseStat: baseStat,
      effort: effort,
      stat: stat.toEntity(),
    );
  }
}
