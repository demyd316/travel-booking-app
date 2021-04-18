import 'package:flutter/material.dart';

class Rightsidepage1Modal extends StatefulWidget {
  @override
  _Rightsidepage1ModalState createState() => _Rightsidepage1ModalState();
}

class _Rightsidepage1ModalState extends State<Rightsidepage1Modal> {
  bool qrVisible = false;
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
                height: MediaQuery.of(context).size.height * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('COVID RESTRICTION  ',
                            style: TextStyle(
                              fontSize: 20,
                              height: 1.1,
                              color: Colors.red,
                            )),
                        Image.asset(
                          "assets/images/Excalmation.png",
                          // width: 35,
                          // height: 35,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Text(
                      "Find out more about the rule and restrictions                 ",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "We urgently advise you to wear\na face mask in all indoor\nspaces accessible to the\npublic. In addition, we urgently\nadvise people in professions\n requiring frequent and direct\ncontact with others within a \ndistance of 1,5 metres to\nwear a mask.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.pop(context);
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
                    "skip",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(123, 194, 156, 1)),
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
