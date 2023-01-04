import 'package:flutter/material.dart';

class AllProduct {
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;
  AllProduct({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<AllProduct> allProducts = [
  AllProduct(
      id: 1,
      title: "IPhone 14",
      price: 1120,
      size: 11,
      description: dummyText,
      image: "assets/images/iPhone-14.png",
      color: Color(0xFFE6B398)),
  AllProduct(
      id: 2,
      title: "Airpods Pro Orginal 4",
      price: 180,
      size: 12,
      description: dummyText,
      image: "assets/images/airpids_pro.png",
      color: Color(0xFF3D82AE)),
  AllProduct(
      id: 3,
      title: "IPhone 12",
      price: 750,
      size: 12,
      description: dummyText,
      image: "assets/images/iphone_12.png",
      color: Color(0xFF3D82AE)),
  AllProduct(
      id: 4,
      title: "Apple Watch Ultra Series 8 Orginal",
      price: 790,
      size: 8,
      description: dummyText,
      image: "assets/images/apple-watch-ultra.png",
      color: Color.fromARGB(255, 167, 203, 251)),
  AllProduct(
      id: 5,
      title: "IPhone 11",
      price: 400,
      size: 8,
      description: dummyText,
      image: "assets/images/IPhone_11.png",
      color: Color.fromARGB(255, 167, 203, 251)),
  AllProduct(
      id: 6,
      title: "Freebuds4 Hwawi",
      price: 110,
      size: 10,
      description: dummyText,
      image: "assets/images/freebuds4i-black.png",
      color: Color(0xFF989493)),
  AllProduct(
      id: 7,
      title: "IPone 12 Pro Max",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/IPhone_12_Pro_Max.png",
      color: Color(0xFF989493)),
  AllProduct(
      id: 8,
      title: "IPhone 13",
      price: 890,
      size: 12,
      description: dummyText,
      image: "assets/images/iphone_13.png",
      color: Color(0xFFFB7883)),
  AllProduct(
      id: 9,
      title: "Full Cover For IPhone 11 , 12 , 13",
      price: 8,
      size: 12,
      description: dummyText,
      image: "assets/images/full_cover_8.png",
      color: Color(0xFFFB7883)),
  AllProduct(
    id: 10,
    title: "IPhone 13 Pro Max",
    price: 1080,
    size: 12,
    description: dummyText,
    image: "assets/images/iphone_13_pro_max.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
