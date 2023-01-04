import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/model/categoriesmodel.dart';
import 'package:shop_app/screens/accessories/accessories.dart';
import 'package:shop_app/screens/maintenance/maintanace.dart';
import 'package:shop_app/screens/mobiles/mobiles.dart';

import 'constants.dart';

class Catogriesview extends StatelessWidget {
  final CategoriesModel? categoriesModel;
  final int? press;
  const Catogriesview({super.key, this.categoriesModel, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (press == 0) {
          Get.to(Mobiles());
        } else if (press == 1) {
          Get.to(Accessories());
        } else if (press == 2) {
          Get.to(Maintenance());
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${categoriesModel!.image}"),
                      fit: BoxFit.fill,
                    ),
                    //color: colorapp,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        color: Colors.black12,
                        blurRadius: 4,
                      )
                    ]),
                child: BackdropFilter(
                    filter: ImageFilter.blur(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: colorapp.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ))),
            Center(
              child: Text(
                categoriesModel!.title.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
