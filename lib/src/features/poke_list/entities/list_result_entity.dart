import 'package:equatable/equatable.dart';

class ListResultEntity extends Equatable {
  final String name;
  final String url;

  const ListResultEntity({required this.name, required this.url});

  @override
  List<Object?> get props => [name, url];
}
