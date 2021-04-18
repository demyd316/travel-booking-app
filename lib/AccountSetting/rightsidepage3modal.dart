import 'package:flutter/material.dart';
import 'package:myapp/AccountSetting/ticketsdeletemodal.dart';
import 'package:myapp/standardadventuresummary.dart';
import 'package:myapp/standardadventurepanelpage.dart';

class Rightsidepage3Modal extends StatefulWidget {
  @override
  _Rightsidepage3ModalState createState() => _Rightsidepage3ModalState();
}

class _Rightsidepage3ModalState extends State<Rightsidepage3Modal> {
  bool qrVisible = false;
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
                  color: Color.fromRGBO(154, 199, 233, 1),
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
                      "bathroom break   ",
                      style: TextStyle(
                        fontSize: 20,
                        height: 1.1,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Image.asset(
                      "assets/images/Bathroom break.png",
                      // width: 35,
                      // height: 35,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Let's take care of\nbusiness and get you\nback on your way",
                    style: TextStyle(
                        color: Colors.black, fontSize: 18, height: 1.6),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 2, color: Color.fromRGBO(123, 194, 156, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "take a break",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(123, 194, 156, 1)),
                  ),
                ),
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
                    color: Color.fromRGBO(154, 199, 233, 1),
                    border: Border.all(
                        width: 2, color: Color.fromRGBO(123, 194, 156, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Text(
                    "resume trip",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
                    "Menu",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(123, 194, 156, 1)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
