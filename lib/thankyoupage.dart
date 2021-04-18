// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThankYouPage extends StatefulWidget {
  @override
  _ThankYouPageState createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {
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
                size: 50,
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
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
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
            Image.asset("assets/images/review.png",
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover),
            Positioned(top: 40, left: 0, child: _backButton()),
            Positioned(top: 40, right: 0, child: _menuButton()),
            Container(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      color: Color.fromRGBO(154, 199, 233, 1),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Thank you for \nsharing your opinion!",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "See you on our \nsocial media",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              height: 1.2,
                              color: Color.fromRGBO(121, 199, 156, 1)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    new GestureDetector(
                      onTap: () {
                        print("Container clicked");
                      },
                      child: new Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 40,
                        padding: EdgeInsets.symmetric(vertical: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(121, 199, 156, 1),
                          border: Border.all(
                              width: 2,
                              color: Color.fromRGBO(123, 194, 156, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/F.png",
                              color: Colors.white,
                            ),
                            Text(
                              "  Facebook",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    new GestureDetector(
                      onTap: () {
                        print("Container clicked");
                      },
                      child: new Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 40,
                        padding: EdgeInsets.symmetric(vertical: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(121, 199, 156, 1),
                          border: Border.all(
                              width: 2,
                              color: Color.fromRGBO(123, 194, 156, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/logo IG.png",
                              color: Colors.white,
                            ),
                            Text(
                              "  Instagram",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      "home screen",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(154, 199, 233, 1)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
