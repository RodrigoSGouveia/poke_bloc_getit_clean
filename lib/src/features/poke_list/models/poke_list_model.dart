import 'package:poke_bloc_getit_clean/src/features/poke_list/models/list_result_model.dart';

class PokeListModel {
  final int count;
  final String? next;
  final String? previous;
  final List<ListResultModel> results;

  const PokeListModel({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  Map<String, dynamic> toJson() {
    //case of post (not valid in this example)
    return {
      "count": count,
      "next": next,
      "previous": previous,
      "results": results,
    };
  }

  factory PokeListModel.fromJson(Map<String, dynamic> json) {
    return PokeListModel(
      count: json["count"],
      next: json["next"],
      previous: json["previous"],
      results: List.from(json["results"])
          .map((e) => ListResultModel.fromJson(e))
          .toList(),
    );
  }
}
