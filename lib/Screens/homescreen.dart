import 'package:flutter/material.dart';
import 'package:uiseries1/Screens/first_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFFB415B), Color(0xFFEE5623)],
                //colors: [Colors.orange[700], Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        padding:
            EdgeInsets.only(top: 70.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/1.jpg",
              height: 80,
              width: 80,
              filterQuality: FilterQuality.high,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "SIGN UP",
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            SizedBox(
              height: 40.0,
            ),
            buildButtonContainer("Login Through Twitter"),
            SizedBox(
              height: 20.0,
            ),
            buildButtonContainer("Login Through Facebook"),
            SizedBox(height: 20.0),
            buildButtonContainer("SIGN UP"),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already Registered ?",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(width: 8.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontSize: 18.0),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildButtonContainer(String text) {
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.0), color: Colors.white),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.pink,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
