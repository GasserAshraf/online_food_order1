import 'package:flutter/material.dart';
import 'package:online_food_order/src/widgets/home_topinfo.dart';
import 'package:online_food_order/src/widgets/food_Category.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory()
        ],
      ),
    );
  }
}
