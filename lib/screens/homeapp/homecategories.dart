import 'package:flutter/material.dart';
import 'package:shop_app/model/categoriesmodel.dart';
import '../details/components/constants.dart';
import '../details/components/categories_details.dart';

class Categories extends StatelessWidget {
  final CategoriesModel? categoriesModel;
  final int? press;
  @override
  Categories({super.key, this.categoriesModel, this.press});

  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categ.length,
        itemBuilder: (context, index) => Catogriesview(
              categoriesModel: categ[index],
              press: index,
            ));
  }
}
