import 'package:flutter/material.dart';

class Card {
  final String imagen, nombre, categoria;

  Card({
    required this.imagen,
    required this.nombre,
    required this.categoria,
  });
}

List<Card> demo_card = [
  Card(
      imagen: "assets/images/docentes/joshua.jpg",
      nombre: "Joshua David Triana",
      categoria: "Apps en la Web"),
  Card(
      imagen: "assets/images/docentes/carlos.jpg",
      nombre: "Carlos Andres Delgado",
      categoria: "Fundamentos de programacion"),
  Card(
      imagen: "assets/images/docentes/joshua.jpg",
      nombre: "Joshua David Triana",
      categoria: "Apps en la Web"),
  Card(
      imagen: "assets/images/docentes/carlos.jpg",
      nombre: "Carlos Andres Delgado",
      categoria: "Fundamentos de programacion"),
  Card(
      imagen: "assets/images/docentes/joshua.jpg",
      nombre: "Joshua David Triana",
      categoria: "Apps en la Web"),
  Card(
      imagen: "assets/images/docentes/carlos.jpg",
      nombre: "Carlos Andres Delgado",
      categoria: "Fundamentos de programacion"),
  Card(
      imagen: "assets/images/docentes/joshua.jpg",
      nombre: "Joshua David Triana",
      categoria: "Apps en la Web"),
];
