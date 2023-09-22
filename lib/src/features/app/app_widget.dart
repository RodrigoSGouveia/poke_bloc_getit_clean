import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:poke_bloc_getit_clean/src/core/navigator_key.dart';
import 'package:poke_bloc_getit_clean/src/core/routes/routes.dart';
import 'package:poke_bloc_getit_clean/src/features/app/app.dart';
import 'package:poke_bloc_getit_clean/src/core/scaffold_messenger_key.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppWidgetCubit(AppWidgetInitialState()),
      child: BlocBuilder<AppWidgetCubit, AppWidgetState>(
        builder: (context, state) {
          return MaterialApp(
            title: "CMY POC ARCH App",
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            onGenerateRoute: (settings) =>
                RoutesGenerator.generateRoutes(settings),
            navigatorKey: navigatorKey,
            scaffoldMessengerKey: scaffoldMessengerKey,
            builder: _buildWidget,
          );
        },
      ),
    );
  }

  Widget _buildWidget(BuildContext context, Widget? widget) {
    return widget ?? const SizedBox();
  }
}
