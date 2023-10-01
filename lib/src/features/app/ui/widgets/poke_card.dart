import 'package:flutter/material.dart';

class PokeCard extends StatelessWidget {
  final Color? color;
  final Widget child;
  final ShapeBorder? shape;

  const PokeCard({super.key, this.color, required this.child, this.shape});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      borderOnForeground: false,
      color: color ?? Colors.white,
      shape: shape ??
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
