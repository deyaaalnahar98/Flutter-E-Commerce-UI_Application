class CategoriesModel {
  final String? image, title;
  final int? id;
  CategoriesModel({this.id, this.title, this.image});
}

List<CategoriesModel> categ = [
  CategoriesModel(id: 1, title: "الأجهزة", image: "assets/images/iphones.png"),
  CategoriesModel(
      id: 2, title: "الأكسسوارات", image: "assets/images/accessories.png"),
  CategoriesModel(id: 3, title: "الصيانة", image: "assets/images/phone_se.png"),
  CategoriesModel(
      id: 4, title: "بطاقات الشحن", image: "assets/images/iphones.png"),
];
