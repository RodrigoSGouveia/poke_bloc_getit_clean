import 'package:flutter/material.dart';
import 'package:poke_bloc_getit_clean/src/core/capitalized_string.dart';

class EternalListCard extends StatelessWidget {
  final String name;
  final String url;
  final int index;
  const EternalListCard({
    super.key,
    required this.name,
    required this.url,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
        top: 8,
        bottom: 8,
        start: 20,
        end: 20,
      ),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.red.withOpacity(0.3),
                blurRadius: 7,
                spreadRadius: 0,
                offset: const Offset(7, 7))
          ],
        ),
        child: Card(
          borderOnForeground: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 12.0,
              end: 12.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "${index.toString()} -",
                      style: const TextStyle(fontSize: 25),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(name.capitalize(),
                        style: const TextStyle(fontSize: 20)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(url),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
