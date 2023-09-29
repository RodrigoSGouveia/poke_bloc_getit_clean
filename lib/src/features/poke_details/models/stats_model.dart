import 'package:json_annotation/json_annotation.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/name_url_pair_model.dart';

part 'stats_model.g.dart';

@JsonSerializable()
class StatsModel {
  final NameUrlPairModel stat;
  final int effort;
  @JsonKey(name: "base_stat")
  final int baseStat;

  const StatsModel({
    required this.stat,
    required this.baseStat,
    required this.effort,
  });

  factory StatsModel.fromJson(Map<String, dynamic> json) =>
      _$StatsModelFromJson(json);
}
