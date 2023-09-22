import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

import 'package:poke_bloc_getit_clean/src/core/dependecy_injection/injector.dart';
import 'package:poke_bloc_getit_clean/src/features/app/app.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Start Dependecy Injection Service
    configureDependencies();

    // Defining device orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]).then((value) => runApp(const AppWidget()));
  }, (error, stack) {
    if (kDebugMode) {
      print("$error\n\n$stack");
    }
  });
}
