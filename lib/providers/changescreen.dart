import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../screens/details/components/constants.dart';

class ChangeScreen extends ChangeNotifier {
  Widget account = CreateAccount();
  createtologin() {
    account = Login();
    notifyListeners();
  }

  logintocreate() {
    account = CreateAccount();
    notifyListeners();
  }
}

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cs = Provider.of<ChangeScreen>(
      context,
    );
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPaddin),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "انشاء حسابك الأن",
                style: TextStyle(
                    color: Color.fromARGB(255, 131, 131, 129),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: kDefaultPaddin,
              ),
              TextFormField(
                  decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      width: 1,
                      color: colorapp,
                    )),
                fillColor: Color.fromARGB(255, 169, 166, 156),
                hintText: "اسم المستخدم",
                hintStyle: TextStyle(color: colorapp),
                icon: Icon(
                  Icons.person,
                  color: colorapp,
                ),
              )),
              SizedBox(
                height: kDefaultPaddin,
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        width: 1,
                        color: colorapp,
                      )),
                  fillColor: Color.fromARGB(255, 169, 166, 156),
                  hintStyle: TextStyle(color: colorapp),
                  hintText: "رقم الهاتف",
                  icon: Icon(Icons.phone_iphone, color: colorapp),
                ),
              ),
              SizedBox(
                height: kDefaultPaddin,
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        width: 1,
                        color: colorapp,
                      )),
                  fillColor: Color.fromARGB(255, 169, 166, 156),
                  hintStyle: TextStyle(color: colorapp),
                  hintText: "العنوان",
                  icon: Icon(Icons.location_city, color: colorapp),
                ),
              ),
              SizedBox(
                height: kDefaultPaddin,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        width: 1,
                        color: colorapp,
                      )),
                  fillColor: Color.fromARGB(255, 169, 166, 156),
                  hintStyle: TextStyle(color: colorapp),
                  hintText: "كلمة المرور",
                  icon: Icon(Icons.password, color: colorapp),
                ),
              ),
              SizedBox(
                height: kDefaultPaddin,
              ),
              InkWell(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: colorappo,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3), color: colorappo, blurRadius: 3)
                    ]),
                child: Center(
                  child: Text(
                    "انشاء حساب",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
              SizedBox(
                height: kDefaultPaddin / 2,
              ),
              Center(
                child: Text(" هل تمتلك حساب بالفعل؟"),
              ),
              SizedBox(
                height: kDefaultPaddin / 2,
              ),
              InkWell(
                onTap: (() {
                  cs.createtologin();
                }),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 227, 225),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            color: colorappo,
                            blurRadius: 5)
                      ]),
                  child: Center(
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          color: colorappo,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cs = Provider.of<ChangeScreen>(
      context,
    );
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPaddin),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "قم بتسجيل الدخول الأن",
                  style: TextStyle(
                      color: Color.fromARGB(255, 131, 131, 129),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: kDefaultPaddin,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          width: 1,
                          color: colorapp,
                        )),
                    fillColor: Color.fromARGB(255, 169, 166, 156),
                    hintStyle: TextStyle(color: colorapp),
                    hintText: "رقم الهاتف",
                    icon: Icon(Icons.phone_iphone, color: colorapp),
                  ),
                ),
                SizedBox(
                  height: kDefaultPaddin,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          width: 1,
                          color: colorapp,
                        )),
                    fillColor: Color.fromARGB(255, 169, 166, 156),
                    hintStyle: TextStyle(color: colorapp),
                    hintText: "كلمة المرور",
                    icon: Icon(Icons.password, color: colorapp),
                  ),
                ),
                SizedBox(
                  height: kDefaultPaddin,
                ),
                InkWell(
                    child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                      color: colorappo,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            color: colorappo,
                            blurRadius: 3)
                      ]),
                  child: Center(
                    child: Text(
                      "تسجيل الدخول ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
                SizedBox(
                  height: kDefaultPaddin / 2,
                ),
                Center(
                  child: Text(" قم بأنشاء حسابك الأن "),
                ),
                SizedBox(
                  height: kDefaultPaddin / 2,
                ),
                InkWell(
                  onTap: (() {
                    cs.logintocreate();
                  }),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 228, 227, 225),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              color: colorappo,
                              blurRadius: 5)
                        ]),
                    child: Center(
                      child: Text(
                        "انشاء حساب ",
                        style: TextStyle(
                            color: colorappo,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
