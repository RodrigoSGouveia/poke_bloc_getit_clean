import 'package:json_annotation/json_annotation.dart';

part 'sprites_model.g.dart';

@JsonSerializable()
class SpritesModel {
  @JsonKey(name: "front_default")
  final String frontDefault;

  const SpritesModel({required this.frontDefault});

  factory SpritesModel.fromJson(Map<String, dynamic> json) =>
      _$SpritesModelFromJson(json);
}
