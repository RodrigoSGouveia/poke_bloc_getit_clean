import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPageCubit extends Cubit<bool> {
  final int _timer = 800;

  SplashPageCubit() : super(false);

  Future<void> timerToNavigate() async {
    Duration duration = Duration(milliseconds: _timer);

    await Future.delayed(duration);

    emit(true);
  }
}
