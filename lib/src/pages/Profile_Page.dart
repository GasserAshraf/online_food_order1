import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _notification = false;
  bool _Tracking = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Profile",
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3.0,
                              offset: Offset(0, 4.0),
                              color: Colors.black38)
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/images/breakfast.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Gasser Ashraf",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "+201064092501",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 25.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            "Edit",
                            style:
                                TextStyle(color: Colors.blue, fontSize: 16.0),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                "Account",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("Location")
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.security,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("Change Password")
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.local_shipping,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("Shipping")
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.payment,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("Payment")
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Notifications",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("App Notifications"),
                          Switch(
                              value: _notification,
                              onChanged: (value) {
                                setState(() {
                                  _notification = value;
                                });
                              })
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Location Tracking"),
                          Switch(
                              value: _Tracking,
                              onChanged: (value) {
                                setState(() {
                                  _Tracking = value;
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                "Other",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Language"),
                      Divider(height: 25.0,),
                      Text("Currency"),
                      Divider(height: 25.0,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
