// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/feedbackpage.dart';
import 'package:myapp/login.dart';
import 'package:myapp/signupforms.dart';
import 'package:myapp/whatdoyoulike.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.green,
                size: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuButton() {
    return InkWell(
      // onTap: () {
      //   Navigator.pop(context);
      // },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Icon(
                Icons.dehaze,
                color: Colors.green,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(214, 220, 220, 1)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Image.asset("assets/images/Sign Up.png",
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover),
            Positioned(top: 40, left: 0, child: _backButton()),
            // Positioned(top: 40, right: 0, child: _menuButton()),
            Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Image.asset("assets/images/logo.png",
                          color: Colors.white, height: 130, fit: BoxFit.cover),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "           Go where you love. Love where you go.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color.fromRGBO(121, 199, 156, 1),
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.8,
                  // clipBehavior: Clip.antiAlias, // Add This
                  child: MaterialButton(
                    child: new Text('sign me up!',
                        style: new TextStyle(
                            fontSize: 22,
                            height: 1.2,
                            letterSpacing: 1,
                            color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SignupForms()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color.fromRGBO(121, 199, 156, 0),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      )),

                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.8,
                  // clipBehavior: Clip.antiAlias, // Add This
                  child: MaterialButton(
                    // minWidth: 200.0,
                    // height: 15,
                    child: new Text('I already have an account!',
                        style: new TextStyle(
                            fontSize: 16,
                            height: 1.75,
                            letterSpacing: 0.73,
                            color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LogIn()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
