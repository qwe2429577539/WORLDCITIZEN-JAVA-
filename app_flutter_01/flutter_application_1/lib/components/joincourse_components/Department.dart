import 'package:flutter/material.dart';

class Department {
  final String name, image;
  final double textSize;
  Department({required this.name, required this.image, required this.textSize});
}

List<Department> departments = [
  Department(
    name: "BEL",
    image: "assets/images/BEL.png",
    textSize: 30,
  ),
  Department(
    name: "EAIT",
    image: "assets/images/EAIT.png",
    textSize: 30,
  ),
  Department(
    name: "Health & Behavioural Sciences",
    image: "assets/images/Health.png",
    textSize: 20,
  ),
  Department(
    name: "Humanities & Social Sciences",
    image: "assets/images/Humanities.png",
    textSize: 20,
  ),
  Department(
    name: "Medicine",
    image: "assets/images/Medicine.png",
    textSize: 25,
  ),
  Department(
    name: "Science",
    image: "assets/images/Science.png",
    textSize: 25,
  ),
];