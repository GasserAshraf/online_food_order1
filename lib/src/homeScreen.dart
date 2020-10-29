import 'package:flutter/material.dart';
import 'package:online_food_order/src/widgets/home_topinfo.dart';
import 'package:online_food_order/src/widgets/food_Category.dart';
import 'package:online_food_order/src/widgets/Search_Widget.dart';
import 'package:online_food_order/src/widgets/boughts_foods.dart';
import 'package:online_food_order/src/data/Food_Data.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Food>_foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(
            height: 20.0,
          ),
          SearchField(),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "frequently bought foods  ",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  print("view all");
                },
                child: Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children:_foods.map(_buildFoodItems).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: food.id,
        name: food.name,
        category: food.category,
        discount: food.discount,
        imagePath: food.imagePath,
        price: food.price,
        rating: food.rating,
      ),
    );
  }

}
