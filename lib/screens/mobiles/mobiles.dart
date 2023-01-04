import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../details/components/constants.dart';
import 'mobile_body.dart';

class Mobiles extends StatelessWidget {
  const Mobiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MobileBody(),
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
    title: Text("الأجهزة"),
  );
}
