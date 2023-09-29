import 'package:equatable/equatable.dart';

class NameUrlPairEntity extends Equatable {
  final String name;
  final String url;

  const NameUrlPairEntity({
    required this.name,
    required this.url,
  });

  @override
  List<Object?> get props => [
        name,
        url,
      ];
}
