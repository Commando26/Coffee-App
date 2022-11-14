import 'dart:ui';

class Category {
  String name;
  //String icon;
  String benif;
  Color color;
  String imgName;
  List<Category> subCategories;


  Category(
      {
        required this.name,
        required this.benif,
        // this.icon,
        required this.color,
        required this.imgName,
        required this.subCategories
      }
      );
}