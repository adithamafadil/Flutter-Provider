import 'package:flutter/material.dart';

class Unit {
  String img;
  String name;
  String element;
  String rarity;
  String description;

  Unit({
    @required this.img,
    @required this.name,
    @required this.element,
    @required this.rarity,
    @required this.description,
  });
}

List<Unit> units = [
  Unit(
    img: "assets/images/1.png",
    name: "Sortilienna",
    element: "Water",
    rarity: "⭐⭐⭐⭐",
    description:
        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
  ),
  Unit(
    img: "assets/images/2.png",
    name: "Eydis",
    element: "Dark",
    rarity: "⭐⭐⭐⭐",
    description:
        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
  ),
  Unit(
    img: "assets/images/3.png",
    name: "Alice",
    element: "Earth",
    rarity: "⭐⭐⭐⭐",
    description:
        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
  ),
  Unit(
    img: "assets/images/4.png",
    name: "Leafa",
    element: "Light",
    rarity: "⭐⭐⭐⭐",
    description:
        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
  ),
  Unit(
    img: "assets/images/5.png",
    name: "Sinon",
    element: "Earth",
    rarity: "⭐⭐⭐⭐",
    description:
        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
  ),
  Unit(
    img: "assets/images/6.png",
    name: "Asuna",
    element: "Earth",
    rarity: "⭐⭐⭐⭐",
    description:
        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
  ),
];
