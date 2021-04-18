import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/accountsettingpage.dart';
import 'package:myapp/login.dart';

import 'AccountSetting/howtripmodal.dart';
import 'AccountSetting/notificationmodal.dart';
import 'AccountSetting/rightsidepage1modal.dart';
import 'AccountSetting/rightsidepage2modal.dart';
import 'AccountSetting/rightsidepage3modal.dart';
import 'AccountSetting/rightsidepage4modal.dart';
import 'AccountSetting/rightsidepage5modal.dart';

class RightSidePage extends StatefulWidget {
  @override
  _RightSidePageState createState() => _RightSidePageState();
}

class _RightSidePageState extends State<RightSidePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool rightsideVisible;
  bool rightside1Visible;
  bool rightside2Visible;
  bool rightside3Visible;
  bool rightside4Visible;
  bool rightside5Visible;
  @override
  void initState() {
    rightsideVisible = true;
    rightside1Visible = false;
    rightside2Visible = false;
    rightside3Visible = false;
    rightside4Visible = false;
    rightside5Visible = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
        child: Drawer(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  // margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(right: 10, top: 20),
                  color: Color.fromRGBO(121, 199, 156, 1),
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width,
                  // alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,

                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.dehaze,
                          color: Colors.white,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .41,
                  child: ListView(
                    itemExtent: 50.0,
                    children: <Widget>[
                      ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('COVID RESTRICTION  ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue[200],
                                    )),
                                Image.asset(
                                  "assets/images/Excalmation.png",
                                  width: 35,
                                  height: 35,
                                  color: Colors.blue[200],
                                ),
                              ],
                            ),
                            Text(
                              "Find out more about the rule and restrictions                 ",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.blue[200]),
                            )
                          ],
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Rightsidepage1Modal(),
                          );
                        },
                      ),
                      ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('skip to next adventure    ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue[200],
                                    )),
                                Image.asset(
                                  "assets/images/Skip.png",
                                  width: 35,
                                  height: 35,
                                  color: Colors.blue[200],
                                ),
                              ],
                            ),
                          ],
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Rightsidepage2Modal(),
                          );
                        },
                      ),
                      ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('bathroom break    ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue[200],
                                    )),
                                Image.asset(
                                  "assets/images/Bathroom break.png",
                                  width: 35,
                                  height: 35,
                                  color: Colors.blue[200],
                                ),
                              ],
                            ),
                          ],
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Rightsidepage3Modal(),
                          );
                        },
                      ),
                      ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('I need coffee shop    ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue[200],
                                    )),
                                Image.asset(
                                  "assets/images/Coffee icon.png",
                                  width: 35,
                                  height: 35,
                                  color: Colors.blue[200],
                                ),
                              ],
                            ),
                          ],
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Rightsidepage4Modal(),
                          );

                          // Here you can give your route to navigate
                        },
                      ),
                      ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('pause trip    ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue[200],
                                    )),
                                Image.asset(
                                  "assets/images/Pause Button.png",
                                  width: 35,
                                  height: 35,
                                  color: Colors.blue[200],
                                ),
                              ],
                            ),
                          ],
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Rightsidepage5Modal(),
                          );

                          // Here you can give your route to navigate
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                    // margin: EdgeInsets.only(top: 10, bottom: 15),
                    margin: EdgeInsets.only(left: 8, right: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: Color.fromRGBO(121, 199, 156, 1),
                        )),
                    // width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .15,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => HowtripModal(),
                        );
                      },
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.end,

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "How's your trip going?",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(121, 199, 156, 1)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "        ",
                                style: TextStyle(
                                    color: Color.fromRGBO(121, 199, 156, 1)),
                              ),
                              Image.asset("assets/images/Great3.png",
                                  width: 40,
                                  height: 40,
                                  color: Color.fromRGBO(121, 199, 156, 1)),
                              Image.asset("assets/images/Okay.png",
                                  width: 40,
                                  height: 40,
                                  color: Color.fromRGBO(121, 199, 156, 1)),
                              Image.asset("assets/images/Bad.png",
                                  width: 40,
                                  height: 40,
                                  color: Color.fromRGBO(121, 199, 156, 1)),
                              Text(
                                "        ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height * .35,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => AccountSettingPage()),
                            );
                          },
                          child: Text('account',
                              style: TextStyle(
                                  fontSize: 17,
                                  height: 1.5,
                                  color: Colors.black54)),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => NotificationModal(),
                            );
                          },
                          child: Text('notifications',
                              style: TextStyle(
                                  fontSize: 17,
                                  height: 1.5,
                                  color: Colors.black54)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => LogIn()),
                            );
                          },
                          child: Text('about Dart',
                              style: TextStyle(
                                  fontSize: 17,
                                  height: 1.5,
                                  color: Colors.black54)),
                        ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                      ],
                    ),
                  ),
                  // height: MediaQuery.of(context).size.height * .4,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                          showDialog(
                            context: context,
                            builder: (context) => NotificationModal(),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              "assets/images/red flag report.png",
                              height: 50,
                              color: Colors.white,
                            ),
                            Text(
                              "report a problem",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => AccountSettingPage()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              // padding: EdgeInsets.all(8),
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                ),
                              ),
                              child: Text(
                                "cancel adventure",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
