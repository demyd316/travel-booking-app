import 'package:flutter/material.dart';
import 'package:myapp/feedbackpage.dart';

class GoodbyeModal extends StatefulWidget {
  @override
  _GoodbyeModalState createState() => _GoodbyeModalState();
}

class _GoodbyeModalState extends State<GoodbyeModal> {
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
                      "So sorry to say goodbye...",
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
                height: 30,
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
                      "Why did you delete your account?",
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
                height: 30,
              ),
              new GestureDetector(
                onTap: () {
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
                    "send feedback",
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
