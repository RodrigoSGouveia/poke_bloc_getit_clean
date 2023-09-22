class ListResultModel {
  final String name;
  final String url;

  const ListResultModel({required this.name, required this.url});

  factory ListResultModel.fromJson(Map<String, dynamic> json) {
    return ListResultModel(
      name: json["name"],
      url: json["url"],
    );
  }
}
