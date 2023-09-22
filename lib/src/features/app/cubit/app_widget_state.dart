import 'package:equatable/equatable.dart';

abstract class AppWidgetState extends Equatable {
  @override
  List<Object> get props => [];
}

class AppWidgetInitialState extends AppWidgetState {}

class AppWidgetSuccessfullState extends AppWidgetState {}

class AppWidgetFailureState extends AppWidgetState {}
