import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../details/components/constants.dart';
import '../../model/Product.dart';
import '../../providers/cartprovider.dart';
import '../details/components/details_screen.dart';
import '../details/components/item_cart.dart';

class MobileBody extends StatelessWidget {
 MobileBody({super.key});
 
  int index = 0;
  @override
  Widget build(BuildContext context) {
    Product product;
  List <Product> mobileItems=products.where((i) => i.categories=="mobile device").toList();
    return GridView.builder(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPaddin, vertical: kDefaultPaddin),
        shrinkWrap: true,
        itemCount: mobileItems.length,
        //physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: kDefaultPaddin,
          crossAxisSpacing: kDefaultPaddin,
          childAspectRatio: 0.55,
        ),
        itemBuilder: ((context, index) => ItemCart(
              product:  mobileItems[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            product: products[index],
                          ))),
            )));
  }
}
