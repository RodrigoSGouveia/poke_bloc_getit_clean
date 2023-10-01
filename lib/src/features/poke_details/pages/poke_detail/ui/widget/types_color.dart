import 'package:flutter/material.dart';

enum Types {
  normal,
  fire,
  water,
  grass,
  flying,
  fighting,
  poison,
  electric,
  ground,
  rock,
  psychic,
  ice,
  bug,
  ghost,
  steel,
  dragon,
  dark,
  fairy,
}

extension TypesString on String {
  Types get type {
    switch (this) {
      case "normal":
        return Types.normal;
      case "fire":
        return Types.fire;
      case "water":
        return Types.water;
      case "grass":
        return Types.grass;
      case "flying":
        return Types.flying;
      case "fighting":
        return Types.fighting;
      case "poison":
        return Types.poison;
      case "electric":
        return Types.electric;
      case "ground":
        return Types.ground;
      case "rock":
        return Types.rock;
      case "psychic":
        return Types.psychic;
      case "ice":
        return Types.ice;
      case "bug":
        return Types.bug;
      case "ghost":
        return Types.ghost;
      case "steel":
        return Types.steel;
      case "dragon":
        return Types.dragon;
      case "fairy":
        return Types.fairy;
      default:
        return Types.dark;
    }
  }
}

extension TypesColor on Types {
  Color? get typeColor {
    switch (this) {
      case Types.normal:
        return Colors.brown[50];
      case Types.fire:
        return Colors.red;
      case Types.water:
        return Colors.blue[300];
      case Types.grass:
        return Colors.green[700];
      case Types.flying:
        return Colors.purple[100];
      case Types.fighting:
        return Colors.red[900];
      case Types.poison:
        return Colors.purpleAccent[700];
      case Types.electric:
        return Colors.yellow;
      case Types.ground:
        return Colors.amber[200];
      case Types.rock:
        return Colors.amber[700];
      case Types.psychic:
        return Colors.pink[200];
      case Types.ice:
        return Colors.blue[50];
      case Types.bug:
        return Colors.green;
      case Types.ghost:
        return Colors.purple[900];
      case Types.steel:
        return Colors.grey[400];
      case Types.dragon:
        return Colors.deepPurple;
      case Types.fairy:
        return Colors.pink[50];
      default:
        return Colors.black;
    }
  }
}
