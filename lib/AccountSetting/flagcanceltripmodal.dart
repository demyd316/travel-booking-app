// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/AccountSetting/ticketsdeletemodal.dart';
import 'package:myapp/feedbackpage.dart';
import 'package:myapp/standardadventuresummary.dart';
import 'package:myapp/standardadventurepanelpage.dart';

class FlagcanceltripModal extends StatefulWidget {
  @override
  _FlagcanceltripModalState createState() => _FlagcanceltripModalState();
}

class _FlagcanceltripModalState extends State<FlagcanceltripModal> {
  // bool qrVisible = false;
  int _value = 1;
  var arr = [
    'My activity isn\'t \navailable',
    'The establishment is closed',
    'The directions are wrong..',
    'Something else went wrong.(Let us know)'
  ];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        contentPadding: EdgeInsets.only(top: 0),
        content: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              // alignment: Alignment.bottomCenter,
              child: Row(children: [
                Image.asset(
                  "assets/images/Flag.png",
                  // width: 100,
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    Text(
                      "data",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    Text(
                      "    Are you sure?",
                      style: TextStyle(
                        color: Color.fromRGBO(123, 194, 156, 1),
                        // fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      // textAlign: TextAlign.justify,
                    ),
                  ],
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(123, 194, 156, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Is there something\nwe can help you with?",
                          style: TextStyle(
                            fontSize: 22,
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
                  Column(
                    children: <Widget>[
                      for (int i = 1; i <= 4; i++)
                        ListTile(
                          title: Text(
                            arr[i - 1],
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(
                                    color:
                                        i == 5 ? Colors.black38 : Colors.black),
                          ),
                          leading: Radio(
                            value: i,
                            groupValue: _value,
                            onChanged: i == 5
                                ? null
                                : (int value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                          ),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => StandardAdventurePanelPage()),
                      );
                    },
                    child: new Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 40,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(123, 194, 156, 1),
                        border: Border.all(
                            width: 2, color: Color.fromRGBO(123, 194, 156, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Text(
                        "Back to my trip",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (context) => FeedBackPage(),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 40,
                padding: EdgeInsets.symmetric(vertical: 8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Text(
                  'Cancel trip',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ));
  }
}
