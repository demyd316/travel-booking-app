import 'package:flutter/material.dart';
import 'package:myapp/AccountSetting/ticketspanelmodal.dart';
import 'package:myapp/standardadventurepanelpage.dart';

class TicketsdeleteModal extends StatefulWidget {
  @override
  _TicketsdeleteModalState createState() => _TicketsdeleteModalState();
}

class _TicketsdeleteModalState extends State<TicketsdeleteModal> {
  bool qrVisible = false;
  Widget _customButton(String string, Color color, Color bordercolor) {
    return InkWell(
        onTap: () {
          if (string == "back to tickets") {
            showDialog(
              context: context,
              builder: (context) => TicketspanelModal(),
            );
          } else {
            showDialog(
              context: context,
              builder: (context) => StandardAdventurePanelPage(),
            );
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          padding: EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: bordercolor),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: color,
          ),
          child: Text(
            string,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      contentPadding: EdgeInsets.only(top: 0),
      content: Container(
        width: 300.0,
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InkWell(
              child: Container(
                  // padding: EdgeInsets.only(top: 0, bottom: 20.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 221, 79, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                  child: Stack(alignment: Alignment.center, children: [
                    Image.asset(
                      "assets/images/ticketframe.png",
                      height: 80,
                      width: 250,
                      // fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                    Text(
                      "TICKETS",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ])),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Are you sure you want\n  to delete this ticket?",
                    style: TextStyle(
                        fontSize: 17, height: 1.2, letterSpacing: 0.23),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _customButton("back to tickets", Colors.green, Colors.green),
                  SizedBox(
                    height: 20,
                  ),
                  _customButton("delete ticket", Colors.white, Colors.red),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 221, 79, 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/website icon.png'),
                    Text(
                      "  www.tiqets.com",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
