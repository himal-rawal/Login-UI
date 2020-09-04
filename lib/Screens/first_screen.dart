import 'package:flutter/material.dart';
import 'package:uiseries1/Screens/signup_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;
  bool value = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

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
              "SIGN IN",
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            SizedBox(
              height: 40.0,
            ),
            buildTextField("Email"),
            SizedBox(
              height: 20.0,
            ),
            buildTextField("Password"),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Checkbox(
                      activeColor: Colors.orange,
                      value: value,
                      onChanged: (bool newvalue) {
                        setState(() {
                          value = newvalue;
                        });
                      }),
                  Text(
                    "Remember Password",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            buildButtonContainer(),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://www.iconfinder.com/data/icons/facebook-ui-flat/48/Facebook_UI-03-512.png",
                          scale: 8.0),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Twitter_colored_svg-256.png",
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              child: Center(
                child: Text(
                  "forget password?",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have account?",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    SizedBox(width: 8.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        "SIGNUP?",
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

  Widget buildTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
        suffixIcon: hintText == "Password"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  Widget buildButtonContainer() {
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.0), color: Colors.white),
      child: Center(
        child: Text(
          "LOGIN",
          style: TextStyle(
            color: Colors.pink,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
