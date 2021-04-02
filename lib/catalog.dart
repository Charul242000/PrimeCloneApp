import 'package:flutter/cupertino.dart';

class CatalogModel{
  static final items=[
    Items(
      id:1,
      name: "Coolie No 1",
      image:"assets/images/coolieposter.jpg",
    )
  ];
}

class Items {
  final num id;
  final String name;
  final String image;
  Items({this.id, this.name,this.image});
}