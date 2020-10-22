import 'package:flutter/material.dart';
import 'package:online_food_order/src/homeScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery App",
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ) ,
      home: HomeScreen(),
    );
  }

}