// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/adventuresetting.dart';
import 'package:myapp/chooseadventure.dart';

class Meditation extends StatefulWidget {
  @override
  _MeditationState createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Image.asset("assets/images/whatdoyoulike.png",
                height: MediaQuery.of(context).size.height, fit: BoxFit.cover),
            Positioned(top: 20, left: 0, child: _backButton()),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "what do you\n want to do?",
                    style: TextStyle(
                      fontSize: 29,
                      fontFamily: 'Roboto Medium',
                      // height: 2,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(243, 221, 79, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/images/dining icon.png"),
                            Text(
                              "dining",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/images/touristic icon.png"),
                            Text(
                              "touristic",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/images/art icon.png"),
                            Text(
                              "art",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/images/games icon.png"),
                            Text(
                              "games",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/images/sport icon.png"),
                            Text(
                              "sport",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/images/theatre icon.png"),
                            Text(
                              "theatre",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/images/nature icon.png"),
                            Text(
                              "nature",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/images/music icon.png"),
                            Text(
                              "music",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    //Wrap with Material
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 18.0,

                    color: Color.fromRGBO(235, 94, 94, 1),
                    clipBehavior: Clip.antiAlias, // Add This
                    child: MaterialButton(
                      minWidth: 150.0,
                      height: 20,
                      // color: Color.fromRGBO(235, 94, 94, 0),
                      child: new Text('next',
                          style: new TextStyle(
                              fontSize: 16.0,
                              // height: 1.2,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => AdventureSetting()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    color: Color.fromRGBO(235, 94, 94, 0),
                    child: MaterialButton(
                      child: new Text('skip',
                          style: new TextStyle(
                              fontSize: 16.0, color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => AdventureSetting()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
