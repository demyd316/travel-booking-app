import 'package:flutter/material.dart';
import 'package:myapp/AccountSetting/ticketsdeletemodal.dart';
import 'package:myapp/standardadventuresummary.dart';
import 'package:myapp/standardadventurepanelpage.dart';

class NotificationModal extends StatefulWidget {
  @override
  _NotificationModalState createState() => _NotificationModalState();
}

class _NotificationModalState extends State<NotificationModal> {
  // bool qrVisible = false;
  int _value = 1;
  var arr = [
    'push-up notifications',
    'e-mail notifications',
  ];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        contentPadding: EdgeInsets.only(top: 0),
        content: Container(
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
                  color: Color.fromRGBO(236, 95, 94, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                // color: Color.fromRGBO(236, 95, 94, 1),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Notification",
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
                  for (int i = 1; i <= 2; i++)
                    ListTile(
                      title: Text(
                        arr[i - 1],
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: i == 5 ? Colors.black38 : Colors.black),
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
                    "confirm",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}