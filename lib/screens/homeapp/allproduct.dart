import 'package:flutter/material.dart';
import '../details/components/constants.dart';
import '../../model/Product.dart';
import '../details/components/details_screen.dart';
import '../details/components/item_cart.dart';

class AllProductBody extends StatelessWidget {
  const AllProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPaddin, vertical: kDefaultPaddin),
        shrinkWrap: true,
        itemCount: products.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: kDefaultPaddin,
          crossAxisSpacing: kDefaultPaddin,
          childAspectRatio: 0.55,
        ),
        itemBuilder: ((context, index) => ItemCart(
              product:  products[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            product: products[index],
                          ))),
            )));
  }
}
