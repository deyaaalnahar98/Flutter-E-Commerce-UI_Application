import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/homeapp/home_screen.dart';
import 'package:shop_app/screens/homeapp/navscreens/account.dart';
import 'package:shop_app/screens/homeapp/navscreens/cart.dart';
import 'package:shop_app/screens/homeapp/navscreens/storedetails.dart';

import '../screens/details/components/constants.dart';
import '../screens/homeapp/homebody.dart';

class NavbarProvider with ChangeNotifier {
  List<NavbarDTO> items = [
    NavbarDTO(label: "الرئيسية", widget: Body(), iconData: Icons.home_outlined),
    NavbarDTO(
      label: "السلة",
      widget: Cart(),
      iconData: Icons.shopping_cart_outlined,
    ),
    NavbarDTO(label: "المستخدم", widget: Account(), iconData: Icons.person),
    NavbarDTO(
      label: "من نحن",
      widget: StoreDetails(),
      iconData: Icons.question_mark,
    ),
  ];
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

 
}

class NavbarDTO {
  Widget? widget;
  String? label;
  IconData? iconData;

  NavbarDTO({this.widget, this.label, this.iconData});
}
