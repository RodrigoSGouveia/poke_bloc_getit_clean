import 'package:flutter/material.dart';

class EternalListCard extends StatelessWidget {
  final String name;
  final String url;
  const EternalListCard({super.key, required this.name, required this.url});

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
                Text(name, style: const TextStyle(fontSize: 20)),
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
