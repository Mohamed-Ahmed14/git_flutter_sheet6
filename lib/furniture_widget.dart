import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:solution_sheet_6/model/shape.dart';

class FurnitureWidget extends StatelessWidget {
  final Furniture furniture;
  const FurnitureWidget({required this.furniture,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: furniture.colorShape,
        borderRadius: BorderRadius.circular(20),
      ) ,
      child: Row(
        children: [
          Image.network(furniture.image!,),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(furniture.title!,style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 5,),
                Text(furniture.description!,style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight:FontWeight.normal,
                ),),
            
              ],
            ),
          ),
          SizedBox(width: 10,),
          Image.network("https://www.iconpacks.net/icons/1/free-building-icon-1064-thumb.png"),
        ],
      ),
    );
  }
}
