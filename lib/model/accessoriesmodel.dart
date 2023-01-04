import 'package:flutter/material.dart';

class AccessoriesM {
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;
  AccessoriesM({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<AccessoriesM> accessoriesm = [
  AccessoriesM(
      id: 1,
      title: "Airpods Pro Orginal 4",
      price: 180,
      size: 12,
      description: dummyText,
      image: "assets/images/airpids_pro.png",
      color: Color(0xFF3D82AE)),
  AccessoriesM(
      id: 2,
      title: "Apple Watch Ultra Series 8 Orginal",
      price: 790,
      size: 8,
      description: dummyText,
      image: "assets/images/apple-watch-ultra.png",
      color: Color.fromARGB(255, 167, 203, 251)),
  AccessoriesM(
      id: 3,
      title: "Freebuds4 Hwawi",
      price: 110,
      size: 10,
      description: dummyText,
      image: "assets/images/freebuds4i-black.png",
      color: Color(0xFF989493)),
  AccessoriesM(
      id: 4,
      title: "Copying Ultra Watch ",
      price: 90,
      size: 11,
      description: dummyText,
      image: "assets/images/S8-Ultra-Max-smartwatch.png",
      color: Color(0xFFE6B398)),
  AccessoriesM(
      id: 5,
      title: "Full Cover For IPhone 11 , 12 , 13",
      price: 8,
      size: 12,
      description: dummyText,
      image: "assets/images/full_cover_8.png",
      color: Color(0xFFFB7883)),
  AccessoriesM(
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
