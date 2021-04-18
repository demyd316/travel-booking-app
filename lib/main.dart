// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:myapp/meditation.dart';
// import 'package:myapp/feedbackpage.dart';

// import 'package:myapp/homepage.dart';
// import 'package:myapp/adventuredestination.dart';
import 'package:myapp/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation',
      // theme: ThemeData(fontFamily: 'Ubuntu'),
      home: ImageWidget(),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        Image.asset('assets/images/background.png',
            width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
      ]),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        Image.asset('assets/images/aboutdart1.png',
            height: MediaQuery.of(context).size.height, fit: BoxFit.cover),
      ]),
    );
  }
}

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  double _current = 0;
  double _currentPostion = 0.0;

  @override
  void initState() {
    super.initState();
  }

  List cardList = [Item1(), Item2()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  Widget build(BuildContext context) {
    // int _current = 0;
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        CarouselSlider(
          height: MediaQuery.of(context).size.height,
          items: cardList.map((card) {
            return Builder(builder: (BuildContext context) {
              return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.blueAccent,
                  child: card,
                ),
              );
            });
          }).toList(),
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 2.0,
          viewportFraction: 1.0,
          onPageChanged: (index) {
            // print(index);
            // setState(() {
            //   _current = index as double;
            // });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0, top: 440),
              child: MaterialButton(
                // minWidth: MediaQuery.of(context).size.width * 2 / 7,
                color: Color.fromRGBO(255, 255, 255, 0.85),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Meditation()),
                  );
                },
                height: 40,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text(
                        " Let's  start  the  adventure! ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.green[300]),
                      ),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
