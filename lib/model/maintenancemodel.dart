import 'package:flutter/material.dart';

class MaintenanceM {
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;
  MaintenanceM({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<MaintenanceM> maintenancem = [
  MaintenanceM(
      id: 1,
      title: "Flex Cable for IPone 12",
      price: 30,
      size: 12,
      description: dummyText,
      image: "assets/images/flex_cable_12.jpg",
      color: Color(0xFF3D82AE)),
  MaintenanceM(
      id: 2,
      title: "Battery For IPhone 6 Pluse",
      price: 20,
      size: 8,
      description: dummyText,
      image: "assets/images/iPhone-6-Plus-battery.png",
      color: Color.fromARGB(255, 167, 203, 251)),
  MaintenanceM(
      id: 3,
      title: "Power Flex Cable For IPhone",
      price: 38,
      size: 10,
      description: dummyText,
      image: "assets/images/iPhone-6S-Plus-Power-Flex-Cable-with-Repair-Parts.png",
      color: Color(0xFF989493)),
  MaintenanceM(
      id: 4,
      title: "Screen Orginal for 11 Pro Max ",
      price: 290,
      size: 11,
      description: dummyText,
      image: "assets/images/iPhone-11-Pro-Max-screen.png",
      color: Color(0xFFE6B398)),
  MaintenanceM(
      id: 5,
      title: "Full Cover For IPhone 11 , 12 , 13",
      price: 8,
      size: 12,
      description: dummyText,
      image: "assets/images/full_cover_8.png",
      color: Color(0xFFFB7883)),
  MaintenanceM(
    id: 6,
    title: "Mobile screen glass against breakage",
    price: 2,
    size: 12,
    description: dummyText,
    image: "assets/images/glass.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
