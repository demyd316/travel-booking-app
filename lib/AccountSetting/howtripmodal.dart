import 'package:flutter/material.dart';
import 'package:myapp/AccountSetting/ticketsdeletemodal.dart';
import 'package:myapp/feedbackpage.dart';
import 'package:myapp/standardadventuresummary.dart';
import 'package:myapp/standardadventurepanelpage.dart';

class HowtripModal extends StatefulWidget {
  @override
  _HowtripModalState createState() => _HowtripModalState();
}

class _HowtripModalState extends State<HowtripModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        contentPadding: EdgeInsets.only(top: 0),
        content: Container(
          alignment: Alignment.center,
          // width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(154, 199, 233, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "How is your trip going?",
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
                    style: TextStyle(color: Color.fromRGBO(121, 199, 156, 1)),
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
                    style: TextStyle(color: Color.fromRGBO(121, 199, 156, 1)),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                color: Colors.grey[300],
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.2,
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
                  Navigator.pop(context);
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content: const Text(
                          "Thank you for your sharing opinion!",
                          style: TextStyle(
                            color: Color.fromRGBO(154, 199, 233, 1),
                            fontSize: 18,
                            height: 1.4,
                          ),
                        ));
                      });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => FeedBackPage()),
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
                        width: 2, color: Color.fromRGBO(123, 194, 156, 1)),
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
                        fontSize: 16, color: Color.fromRGBO(154, 199, 233, 1)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
