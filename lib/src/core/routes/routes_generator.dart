import 'package:flutter/widgets.dart';

import 'package:poke_bloc_getit_clean/src/features/poke_list/pages/poke_list_page/ui/poke_list_page.dart';
import 'package:poke_bloc_getit_clean/src/features/splash/splash.dart';

class RoutesConstants {
  static const initial = "/";
  static const pokeList = "/pokeList";
  static const pokemon = "$pokeList/pokemon";
}

class RoutesGenerator {
  static Map<String, dynamic> getRoutes(RouteSettings settings) => {
        RoutesConstants.initial: (context) => const SplashPage(),
        RoutesConstants.pokeList: (context) => const PokeListPage(),
      };

  static Route<dynamic>? generateRoutes(RouteSettings settings) {
    final routes = RoutesGenerator.getRoutes(settings);
    final WidgetBuilder? builder = routes[settings.name];

    if (builder != null) {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            builder(context),

        // Building animation when changing screen
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInBack;

          Animatable<Offset> tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );
    }
    return null;
  }
}
