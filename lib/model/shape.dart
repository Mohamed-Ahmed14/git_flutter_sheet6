import 'dart:ui';
import 'package:flutter/material.dart';
class Furniture{
  String? image;
  String? title;
  String? description;
  Color? colorShape;
  Furniture({this.image,this.title,this.description,this.colorShape});
}

List<Furniture> furnitureList =[
  Furniture(
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmxaRzoOk2xjNe6pv88QQclFG_mGTs9xx8Ug&usqp=CAU",
    title: "Bed",
    description: "King Size Bed",
    colorShape: Colors.blueAccent,
  ),
  Furniture(
    image: "https://www.seekpng.com/png/detail/781-7817414_png-file-svg-chair-icon.png",
    title: "Chair",
    description: "King Size Chair",
    colorShape: Colors.greenAccent,
  ),
  Furniture(
    image: "https://w7.pngwing.com/pngs/908/335/png-transparent-computer-icons-icon-design-furniture-couch-others-miscellaneous-household-furniture.png",
    title: "Sofa",
    description: "King Cum Sofa",
    colorShape: Colors.purpleAccent,
  ),

];