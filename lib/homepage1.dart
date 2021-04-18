// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/surpriseadventuresummarypage.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
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
            Positioned(
              bottom: -140,
              left: -30,
              child: Image.asset("assets/images/Adventure Summary BKGND.png",
                  height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover),
            ),
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
                    "choose your",
                    style: TextStyle(
                      fontSize: 29,
                      fontFamily: 'Roboto Medium',
                      // height: 1.2,
                      letterSpacing: 1.81,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(154, 199, 233, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "adventure",
                    style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Roboto Medium',
                      // height: 1.2,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.81,
                      color: Color.fromRGBO(154, 199, 233, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  new GestureDetector(
                    onTap: () {
                      print("Container clicked");
                    },
                    child: new Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 50,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Color.fromRGBO(123, 194, 156, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Text(
                        "surprise",
                        style: TextStyle(
                            fontSize: 16,
                            height: 1.2,
                            color: Color.fromRGBO(123, 194, 156, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 18.0,

                    color: Color.fromRGBO(123, 194, 156, 1),
                    clipBehavior: Clip.antiAlias, // Add This
                    child: MaterialButton(
                      minWidth: 180.0,
                      height: 20,
                      child: new Text('standard',
                          style: new TextStyle(
                              fontSize: 16.0,
                              height: 1.2,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => SurpriseAdventureSummaryPage()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info,
                        color: Color.fromRGBO(79, 79, 79, 1),
                      ),
                      Text(
                        "find out more about adventure types",
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.2,
                          color: Color.fromRGBO(79, 79, 79, 1),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "in surprise adventure, unlike the \nstandard version,  you will be \ntaken to a trip without knowing \nthe actual destination",
                    style: TextStyle(
                      fontSize: 10,
                      // height: 1.2,
                      color: Color.fromRGBO(130, 130, 130, 1),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
