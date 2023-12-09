import 'package:flutter/material.dart';
import 'package:solution_sheet_6/model/shape.dart';

import 'furniture_widget.dart';

class FurnitureScreen extends StatelessWidget {
  const FurnitureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Furniture furniture;
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index) {
        return FurnitureWidget(furniture: furnitureList[index],);
      },
          separatorBuilder: (context, index) {
            return SizedBox(height: 15,);
          },
          itemCount: furnitureList.length),
    );
  }
}


