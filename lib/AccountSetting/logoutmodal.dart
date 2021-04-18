import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/signup.dart';

class LogoutModal extends StatefulWidget {
  @override
  _LogoutModalState createState() => _LogoutModalState();
}

class _LogoutModalState extends State<LogoutModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        contentPadding: EdgeInsets.only(top: 0),
        content: Container(
          alignment: Alignment.center,
          // width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.3,
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
                  color: Colors.red[600],
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
                      "Are you sure you want \nto log out?",
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
                height: 40,
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SignUp()),
                  );
                },
                child: new Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 40,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Colors.red[600],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Text(
                    "yes, log out",
                    style: TextStyle(fontSize: 16, color: Colors.red),
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
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      width: 2,
                      color: Colors.red[600],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Text(
                    "no, don't log out",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
