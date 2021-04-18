// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/feedbackpage.dart';

import 'whatdoyoulike.dart';

class AdventuresummaryStart extends StatefulWidget {
  @override
  _AdventuresummaryStartState createState() => _AdventuresummaryStartState();
}

class _AdventuresummaryStartState extends State<AdventuresummaryStart> {
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
            Image.asset("assets/images/Adventure Summary BKGND.png",
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover),
            Positioned(top: 40, left: 0, child: _backButton()),
            Positioned(top: 40, right: 0, child: _menuButton()),
            Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Text(
                  "Your Adventure Summary",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Roboto',
                    height: 1.3,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(236, 95, 94, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Summary Background.png",
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/Grouptime.png",
                          ),
                          Text(
                            " 1h    ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                              color: Colors.white,
                            ),
                          ),
                          Image.asset(
                            "assets/images/Groupdollar.png",
                          ),
                          Text(" 10    ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto",
                                color: Colors.white,
                              )),
                          Image.asset(
                            "assets/images/Groupman.png",
                          ),
                          Text(
                            " 1    ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                              color: Colors.white,
                            ),
                          ),
                          Image.asset(
                            "assets/images/round trip.png",
                          ),
                          Text(
                            " ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                              color: Colors.white,
                            ),
                          ),
                          Image.asset(
                            "assets/images/Group.png",
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 60,
                        child: Row(
                          children: [
                            Image.asset("assets/images/summary edits.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => WhatdoyoulikePage()),
                    );
                  },
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "assets/images/GO.png",
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
