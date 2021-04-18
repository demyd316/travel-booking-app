// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/feedbackpage.dart';
// import 'package:myapp/homepage.dart';
import 'package:myapp/whatdoyoulike.dart';

import 'network/ApiHelper.dart';
import 'network/validations.dart';
import 'package:myapp/network/Constants.dart' as Constants;

class SignupForms extends StatefulWidget {
  @override
  _SignupFormsState createState() => _SignupFormsState();
}

class _SignupFormsState extends State<SignupForms> {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  bool isWinnerTakesAll = false;
  bool autovalidate = false;
  Validations validations = new Validations();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  static String email = "";
  static String pass = "";
  static String username = "";
  bool showpassword = true;
  var userid;

  submit() {
    final FormState form = formKey.currentState;
    if (!form.validate()) {
      autovalidate = true; // Start validating on every change.
    }
    // print(pass);
    fetchAlbum();
  }

  fetchAlbum() async {
    Map<String, dynamic> data = {
      "email": email,
      "password": pass,
      "username": username
    };
    // print(data);
    // print(Constants.BASE_URL + Constants.BASE_URL_SIGNUP);
    ApiHelper.postRequest(Constants.BASE_URL_SIGNUP, data).then((response) {
      // print("response");
      print(response.message.toString());
      // print(userid);
      userid = response.userid;
      print(userid);
      if (userid != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => WhatdoyoulikePage()),
        );
      }
    }).catchError((err) {
      print(err);
    });
  }

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
            Image.asset("assets/images/Sign Up forms.png",
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover),
            Positioned(top: 40, left: 0, child: _backButton()),
            // Positioned(top: 40, right: 0, child: _menuButton()),
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 100,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Text(
                          "sign up",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 76,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Text(
                        "Use your social media accounts",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          letterSpacing: 0.73,
                          height: 1.75,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/images/Google Button.png"),
                            Image.asset('assets/images/Facebook Button.png'),
                            Image.asset("assets/images/Apple Button.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: new Form(
                      key: formKey,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            padding: EdgeInsets.only(left: 20, right: 8),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromRGBO(255, 255, 255, 0.2),
                            ),
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: TextFormField(
                              controller: usernameController,
                              keyboardType: TextInputType.emailAddress,
                              // validator: validations.validateName,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "name",
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            padding: EdgeInsets.only(left: 20, right: 8),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromRGBO(255, 255, 255, 0.2),
                            ),
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: TextFormField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              validator: validations.validateEmail,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "email",
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            padding: EdgeInsets.only(left: 20, right: 8),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromRGBO(255, 255, 255, 0.2),
                            ),
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: TextFormField(
                              controller: passwordController,
                              keyboardType: TextInputType.emailAddress,
                              obscureText: showpassword,
                              validator: validations.validatePassword,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "password",
                                hintStyle: TextStyle(color: Colors.white),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    showpassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      showpassword = !showpassword;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromRGBO(121, 199, 156, 1),
                            ),
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.7,
                            // clipBehavior: Clip.antiAlias, // Add This
                            child: MaterialButton(
                              child: new Text("let's go!",
                                  style: new TextStyle(
                                      fontSize: 22,
                                      height: 1.2,
                                      letterSpacing: 1,
                                      color: Colors.white)),
                              onPressed: () {
                                email = emailController.text;
                                pass = passwordController.text;
                                username = usernameController.text;
                                // print(emailController.text);
                                // print(passwordController.text);
                                submit();
                              },
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "                remember me  ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              new Transform.scale(
                                scale: 1.5,
                                child: new Checkbox(
                                  value: isWinnerTakesAll,
                                  onChanged: (state) => setState(() =>
                                      isWinnerTakesAll = !isWinnerTakesAll),
                                  activeColor: Colors.green,
                                  checkColor: Colors.black,
                                  focusColor: Colors.green,

                                  // materialTapTargetSize: MaterialTapTargetSize.padded,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
