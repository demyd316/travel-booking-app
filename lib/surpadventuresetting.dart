import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:myapp/standardadventurepanelpage.dart';
import 'package:myapp/surpriseadventuresummarypage.dart';

class SurpadventureSetting extends StatefulWidget {
  @override
  _SurpadventureSettingState createState() => _SurpadventureSettingState();
}

class _SurpadventureSettingState extends State<SurpadventureSetting> {
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
      body: Stack(
        children: [
          Image.asset(
            "assets/images/map1.png",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(top: 40, left: 0, child: _backButton()),
          Positioned(top: 40, right: 0, child: _menuButton()),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 30, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "participants   ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Container(
                            width: 60,
                            height: 30,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.blue)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.blue))),
                            )),
                        Text(
                          " h",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 60,
                        ),
                        Text(
                          " min",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "available time",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Container(
                            width: 60,
                            height: 30,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.blue)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.blue))),
                            )),
                        Text(
                          " h",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            width: 60,
                            height: 30,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.blue)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.blue))),
                            )),
                        Text(
                          " min",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'cost',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: FlutterSlider(
                      values: [30],
                      // rangeSlider: true,
                      max: 500,
                      min: 0,
                      handler: FlutterSliderHandler(
                        // decoration: BoxDecoration(
                        // color: Colors.blue,
                        // ),
                        child: Material(
                          type: MaterialType.canvas,
                          // color: Colors.orange,
                          elevation: 3,
                          child: Container(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.golf_course,
                                size: 20,
                              )),
                        ),
                      ),
                    )),
                    Row(
                      children: [
                        Container(
                          width: 30,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            width: 60,
                            height: 30,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.blue)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.blue))),
                            )),
                        Text(
                          "   \$  ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Preferred transport type",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/Group.png",
                      height: 40,
                    ),
                    Image.asset(
                      "assets/images/Group (1).png",
                      height: 40,
                      width: 100,
                    ),
                    Image.asset(
                      "assets/images/Shape.png",
                      height: 40,
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Set the starting point",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                MaterialButton(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Prinsegracht 476",
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.my_location)
                    ],
                  ),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(width: 1, color: Colors.blue)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => SurpriseAdventureSummaryPage()),
                        );
                      },
                      child: Text(
                        "CONFIRM",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      height: 40,
                      minWidth: MediaQuery.of(context).size.width * 0.4,
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
