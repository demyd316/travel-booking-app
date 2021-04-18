// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:myapp/SurpadventurePanel.dart';
import 'package:myapp/surpriseadventurepanel.dart';
import 'package:myapp/whatdoyoulike.dart';

class SurpriseAdventureSummaryPage extends StatefulWidget {
  @override
  _SurpriseAdventureSummaryPageState createState() =>
      _SurpriseAdventureSummaryPageState();
}

class _SurpriseAdventureSummaryPageState
    extends State<SurpriseAdventureSummaryPage> {
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
        // decoration: BoxDecoration(color: Color.fromRGBO(214, 220, 220, 1)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Image.asset("assets/images/Untitled.png",
                width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
            Positioned(top: 40, left: 0, child: _backButton()),
            Positioned(top: 40, right: 0, child: _menuButton()),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    "your adventure",
                    style: TextStyle(
                      fontSize: 29,
                      fontFamily: 'Roboto Medium',
                      // height: 1.2,
                      letterSpacing: 1.81,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(123, 194, 156, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "summary",
                    style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Roboto Medium',
                      // height: 1.2,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.81,
                      color: Color.fromRGBO(123, 194, 156, 1),
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
                    height: 200,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => SurpriseadventurePanel()),
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
            ),
          ],
        ),
      ),
    );
  }
}
