import 'package:flutter/material.dart';
import '../details/components/constants.dart';
import '../../model/Product.dart';
import '../details/components/details_screen.dart';
import '../details/components/item_cart.dart';

class AccessoriesBody extends StatelessWidget {
  const AccessoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
        Product product;
  List <Product> accessoriesitems=products.where((i) => i.categories=="aaccessories").toList();
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin, vertical: kDefaultPaddin),
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: accessoriesitems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.55,
          ),
          itemBuilder: ((context, index) =>ItemCart(
              product:  accessoriesitems[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            product: accessoriesitems[index],
                          ))),
            ))),
    );
  }
}
