import 'package:flutter/material.dart';




class Food_Card extends StatelessWidget {
  final String category_Name;
  final String image_path;
  final int Number_of_items;
  Food_Card({this.category_Name,this.image_path,this.Number_of_items});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(image_path),
                height: 65.0,
                width: 65.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(category_Name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  Text("$Number_of_items kinds")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
