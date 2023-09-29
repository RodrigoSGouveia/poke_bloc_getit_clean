import 'package:equatable/equatable.dart';

class SpritesEntity extends Equatable {
  final String frontDefault;

  const SpritesEntity({required this.frontDefault});

  @override
  List<Object> get props => [frontDefault];
}
