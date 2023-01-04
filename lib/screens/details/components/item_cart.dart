import 'package:flutter/material.dart';

import 'constants.dart';
import '../../../model/Product.dart';

class ItemCart extends StatelessWidget {
  final Product? product;
  final Function()? press;
  const ItemCart({
    Key? key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            // shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 2), color: Colors.black12, blurRadius: 4)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
                width: MediaQuery.of(context).size.height * 0.18,
                child: Image.asset(
                  "${product?.image}",
                  // fit: BoxFit.fill,
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                  child: Text(
                    "${product?.title}",
                    style: TextStyle(color: kTextColor),
                  )),
              Text(
                "\$${product?.price}",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
