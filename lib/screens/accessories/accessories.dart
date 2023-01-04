import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shop_app/screens/accessories/accessories_body.dart';

import '../details/components/constants.dart';

class Accessories extends StatelessWidget {
  const Accessories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: AccessoriesBody(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: colorapp,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    ),
    centerTitle: true,
    title: Text("الأكسسوارات"),
  );
}
