import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/details/components/constants.dart';
import 'package:shop_app/providers/Navbar_provider.dart';
import 'package:shop_app/screens/homeapp/homebody.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class HomeScreen extends StatelessWidget {
  NavbarProvider? navbarProvider;

  @override
  Widget build(BuildContext context) {
    int i = 0;
    final mp = Provider.of<NavbarProvider>(
      context,
    );
    navbarProvider = Provider.of<NavbarProvider>(context, listen: true);
    return Scaffold(
        appBar: buildAppBar(),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: mp.items[mp.selectedIndex].widget!),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor:colorappo,
          unselectedItemColor: colorapp,
        selectedIconTheme: IconThemeData(size: 30 ),
          currentIndex: mp.selectedIndex,
          onTap: (i) {
            mp.selectedIndex = i;
            
          },
          elevation: 0,
          items: mp.items
              .map((e) => BottomNavigationBarItem(
                
                  icon: Stack(
                    children: [
                      Icon(e.iconData),
                    ],
                  ),
                  label: e.label))
              .toList(),
        ));
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: colorapp,
    elevation: 0,
    centerTitle: true,
    title: Container(
      height: 40,
      width: 120,
      child: Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.fill,
      ),
    ),
  );
}