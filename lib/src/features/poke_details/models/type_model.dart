import 'package:json_annotation/json_annotation.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/name_url_pair_model.dart';
part 'type_model.g.dart';

@JsonSerializable()
class TypeModel {
  final int slot;
  final NameUrlPairModel type;

  const TypeModel({required this.slot, required this.type});

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}
