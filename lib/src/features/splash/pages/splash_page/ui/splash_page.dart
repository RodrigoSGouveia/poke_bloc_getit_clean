import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_bloc_getit_clean/src/core/dependecy_injection/dependecy_injection.dart';
import 'package:poke_bloc_getit_clean/src/core/routes/routes.dart';
import 'package:poke_bloc_getit_clean/src/features/splash/pages/splash_page/ui/cubit/splash_page_cubit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashPageCubit _splashPageCubit = getIt();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: BlocListener<SplashPageCubit, bool>(
        bloc: _splashPageCubit..timerToNavigate(),
        listener: (context, _) => _navToHome(context),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/images/poke_bloc_getit_clean_bola.png",
                scale: 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navToHome(BuildContext context) {
    const route = RoutesConstants.pokeList;
    Navigator.of(context).pushReplacementNamed(route);
  }
}
