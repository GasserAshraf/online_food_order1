import 'package:flutter/material.dart';
import 'package:online_food_order/src/widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      children: <Widget>[
        OrderCard()
      ],

    );
  }
}
