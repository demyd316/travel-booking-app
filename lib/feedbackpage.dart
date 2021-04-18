// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/accountsettingpage.dart';
import 'package:myapp/rightsidepage.dart';
import 'package:myapp/thankyoupage.dart';

class FeedBackPage extends StatefulWidget {
  @override
  _FeedBackPageState createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
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
                            "How did you like\n this adventure?",
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
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "        ",
                          style: TextStyle(
                              color: Color.fromRGBO(121, 199, 156, 1)),
                        ),
                        Image.asset(
                          "assets/images/Great1.png",
                          width: 40,
                          height: 40,
                          // color: Colors.white,
                        ),
                        Image.asset(
                          "assets/images/Okay.png",
                          width: 40,
                          height: 40,
                          color: Color.fromRGBO(243, 221, 79, 1),
                        ),
                        Image.asset(
                          "assets/images/Bad.png",
                          width: 40,
                          height: 40,
                          color: Color.fromRGBO(243, 221, 79, 1),
                        ),
                        Text(
                          "        ",
                          style: TextStyle(
                              color: Color.fromRGBO(121, 199, 156, 1)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.13,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "      leave us some comment...",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              height: 2,
                              color: Color.fromRGBO(79, 79, 79, 1),
                            ),
                            // textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ThankYouPage()),
                        );
                      },
                      child: new Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 40,
                        padding: EdgeInsets.symmetric(vertical: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(154, 199, 233, 1),
                          border: Border.all(
                              width: 2,
                              color: Color.fromRGBO(123, 194, 156, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Text(
                          "confirm",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: new Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 40,
                        padding: EdgeInsets.symmetric(vertical: 8),
                        alignment: Alignment.center,
                        child: Text(
                          "skip",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(154, 199, 233, 1)),
                        ),
                      ),
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
