import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _PasswordVisibility = true;

  @override
  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Your email or number",
          hintStyle: TextStyle(color: Color(0xffbdc2cb), fontSize: 18.0)),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter your Password",
          hintStyle: TextStyle(color: Color(0xffbdc2cb), fontSize: 18.0),
          suffixIcon: IconButton(
              icon: _PasswordVisibility ? Icon(Icons.visibility_off):Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  _PasswordVisibility = !_PasswordVisibility;
                });
              })),
      obscureText: _PasswordVisibility,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign In",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgotten Password ..?",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildPasswordTextField(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't Have an account ..?",
                  style: TextStyle(
                      color: Color(0xffbdc2cb),
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Sign up",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
