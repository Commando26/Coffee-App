import 'dart:ui';

import 'package:flutter/material.dart';

import 'category.dart';
import 'categorypart.dart';
class SubCategory extends Category{

  List<CategoryPart> parts;

  SubCategory({
    required this.parts,
    required String name,
    //required String icon,
    required Color color,
    required  String imgName,
    required String benif
  }): super(
      name: name,
      // icon: icon,
      color: color,
      imgName: imgName,
      subCategories: [],
      benif: benif
  );
}