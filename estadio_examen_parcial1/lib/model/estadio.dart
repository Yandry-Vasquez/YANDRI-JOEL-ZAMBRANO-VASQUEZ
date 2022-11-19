import 'package:flutter/cupertino.dart';

class Estadio {
  final int id;
  final String name;
  final String descripcion;
  final String local;
  final String presidente;
  final String capacidad;

  Estadio({
    required this.id,
    required this.name,
    required this.descripcion,
    required this.local,
    required this.presidente,
    required this.capacidad,
  });
}

