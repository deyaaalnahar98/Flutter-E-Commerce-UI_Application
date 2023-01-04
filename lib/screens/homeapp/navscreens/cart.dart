import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../details/components/constants.dart';
import '../../../providers/cartprovider.dart';
import '../../mobiles/mobile_body.dart';

class Cart extends StatelessWidget {
  final MobileBody mobileBody = MobileBody();
  Cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cp = Provider.of<CartProvider>(
      context,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: cp.cart.isEmpty
          ? Center(
              child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    child: Image.asset(
                      "assets/images/cartstore.jfif",
                      fit: BoxFit.fill,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 270),
                  child: Text(
                    " لم تقم بأضافة شيء الى السلة\n ابدأ تسوقك الأن ",
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: cp.cart.length,
                      itemBuilder: ((context, index) => Padding(
                          padding: const EdgeInsets.all(14),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 1),
                                      color: colorapp,
                                      blurRadius: 4)
                                ]),
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(6),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: Image.asset(
                                    "${cp.cart[index].image}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "${cp.cart[index].title}",
                                        style: TextStyle(
                                            color: colorapp, fontSize: 13),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("\$${cp.cart[index].price}"),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    cp.updateProduct(
                                                        cp.cart[index],
                                                        cp.cart[index].qty! -
                                                            1);
                                                  },
                                                  child: Icon(
                                                    Icons.remove_circle,
                                                    size: 26,
                                                    color: colorappo,
                                                  ),
                                                ),
                                                Text(
                                                  " ${cp.cart[index].qty} ",
                                                  style: TextStyle(
                                                    color: colorapp,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    cp.updateProduct(
                                                        cp.cart[index],
                                                        cp.cart[index].qty! +
                                                            1);
                                                  },
                                                  child: Icon(
                                                    Icons.add_circle,
                                                    size: 26,
                                                    color: colorappo,
                                                  ),
                                                ),
                                              ])),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: InkWell(
                                          onTap: (() {
                                            cp.removeProduct(cp.cart[index]);
                                          }),
                                          child: Icon(Icons.close,
                                              color: colorapp)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10,
                                          right: 6,
                                          bottom: 4,
                                          left: 2),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          "المبلغ الكلي\n \$${cp.cart[index].price! * cp.cart[index].qty!}",
                                          style: TextStyle(
                                              color: colorapp, fontSize: 14),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          )))),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.18,
                  
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)), color: colorapp),
                    child: Column(
                      children: [
                        Text(
                          "اجمالي التكلفة: \$ " +
                              Provider.of<CartProvider>(
                                context,
                              ).totalCartValue.toString() +
                              "",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                         Padding(
                  padding: const EdgeInsets.all(kDefaultPaddin / 4),
                  child: InkWell(
                      onTap: () {
                       
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: colorappo,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  color: colorapp,
                                  blurRadius: 4)
                            ]),
                        child: Center(
                          child: Text(
                            "متابعة الشراء",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ))),
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
    );
  }
}
