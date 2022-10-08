import 'package:book_share/core/color_manager.dart';
import 'package:flutter/material.dart';

class Library {
  String image, name;
  Color color;

  Library({
    required this.image,
    required this.name,
    required this.color,
  });
}

List<Library> library = [
  Library(
    name: 'Biography',
    image: "assets/images/library/biography.png",
    color: ColorManager.lightBlue,
  ),
  Library(
    name: 'Business',
    image: "assets/images/library/business.png",
    color: ColorManager.purple,
  ),
  Library(
    name: 'Children',
    image: "assets/images/library/children.png",
    color: ColorManager.green,
  ),
  Library(
    name: 'Cookery',
    image: "assets/images/library/cookery.png",
    color: ColorManager.mainColor,
  ),
  Library(
    name: 'Fiction',
    image: "assets/images/library/fiction.png",
    color: ColorManager.lightPurple,
  ),
  Library(
    name: 'Graphic Novels',
    image: "assets/images/library/graphic_novels.png",
    color: ColorManager.yellow,
  ),
];
