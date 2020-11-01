import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffd3d3d3), width: 2.0),
                    borderRadius: BorderRadius.circular(10.0)),
                height: 75.0,
                width: 45.0,
                child: Column(
                  children: <Widget>[
                    InkWell(
                      child: Icon(Icons.keyboard_arrow_up,
                          color: Color(0xffd3d3d3)),
                      onTap: () {
                        print('up');
                      },
                    ),
                    Text(
                      '0',
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0xffd3d3d3)),
                    ),
                    InkWell(
                        child: Icon(Icons.keyboard_arrow_down,
                            color: Color(0xffd3d3d3)),
                        onTap: () {
                          print('down');
                        }),
                  ],
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/lunch.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(35.0),
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 5.0)
                    )]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
