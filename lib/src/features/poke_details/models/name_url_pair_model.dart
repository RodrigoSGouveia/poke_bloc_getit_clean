import 'package:json_annotation/json_annotation.dart';

part 'name_url_pair_model.g.dart';

@JsonSerializable()
class NameUrlPairModel {
  final String name;
  final String url;

  const NameUrlPairModel({
    required this.name,
    required this.url,
  });

  factory NameUrlPairModel.fromJson(Map<String, dynamic> json) =>
      _$NameUrlPairModelFromJson(json);
}
