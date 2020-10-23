import 'package:flutter/material.dart';
import 'package:online_food_order/src/data/Category_Data.dart';
import 'package:online_food_order/src/models/category_model.dart';
import 'package:online_food_order/src/widgets/Food_Card.dart';


class FoodCategory extends StatelessWidget {
  final List<Category> _categories= categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context,int index){
          return Food_Card(
            category_Name: _categories[index].Category_Name,
            image_path: _categories[index].image_path,
            Number_of_items: _categories[index].Number_of_items,
          );
        },
      ),
    );
  }
}
