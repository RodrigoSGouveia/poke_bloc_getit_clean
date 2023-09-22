import 'package:injectable/injectable.dart';

import 'pages/splash_page/ui/cubit/splash_page_cubit.dart';

@module
abstract class SplashPageModule {
  @injectable
  SplashPageCubit get splashPageCubit => SplashPageCubit();
}
