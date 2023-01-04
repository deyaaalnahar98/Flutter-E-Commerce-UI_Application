import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/screens/details/components/constants.dart';
import 'package:shop_app/model/Product.dart';
import 'package:shop_app/screens/details/components/details_screen.dart';
import 'package:shop_app/screens/homeapp/allproduct.dart';
import 'package:shop_app/screens/mobiles/mobile_body.dart';
import 'homecategories.dart';
import '../details/components/item_cart.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color:colorapp,
            height: 200,
            child: Image.asset("assets/images/mobile_store.jpg",fit: BoxFit.fill,),
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPaddin/2),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2),
                        color: Color.fromARGB(255, 224, 221, 221),
                        blurRadius: 0)
                  ]),
              child: TextFormField(
                  decoration: InputDecoration(
                hintText: "أبحث هنا",
                hintStyle: TextStyle(
                  color: colorapp,
                  fontSize: 14,
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPaddin / 2),
                    child: SvgPicture.asset("assets/icons/search.svg",
                        color: colorapp),
                  ),
                ),
                border: InputBorder.none,
              )),
            ),
            SizedBox(height: 10,),
            Text(
              "الاقسام",
              style: TextStyle(
                  color: colorapp, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(height: 140, child: Categories()),
            
            Text(
              "احدث ما لدينا",
              style: TextStyle(
                  color: colorapp, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPaddin / 4),
              child: AllProductBody(),
            )
        ],
        
      ),
          ),
        ])
    );
  }
}
