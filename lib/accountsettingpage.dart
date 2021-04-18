// import 'package:doctorgo_doctor/views/custom/remove_invoice_modal.dart';
// import 'package:doctorgo_doctor/views/pharmacy_nearby/order_detail_screen.dart';
// import 'package:myapp/AccountSetting/addCreditCardPage.dart';
// import 'package:myapp/AccountSetting/invoice_details_screen.dart';
// import 'package:doctorgo_doctor/views/pharmacy_nearby/my_orders_screen.dart';
// import 'package:myapp/AccountSetting/historyPage.dart';
// import 'package:dotted_border/dotted_border.dart';
// import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'AccountSetting/accountdeletemodal.dart';
import 'AccountSetting/logoutmodal.dart';

// ignore: must_be_immutable
class AccountSettingPage extends StatefulWidget {
  String userName;
  AccountSettingPage({this.userName});
  @override
  _AccountSettingPageState createState() => _AccountSettingPageState();
}

class _AccountSettingPageState extends State<AccountSettingPage> {
  bool requestVisilble;
  bool passandsecuVisible;
  bool deleteVisible;
  bool logoutVisible;
  bool passwordchangeVisible;
  bool termsandconditionVisible;

  @override
  void initState() {
    requestVisilble = true;
    passandsecuVisible = false;
    deleteVisible = false;
    logoutVisible = false;
    passwordchangeVisible = false;
    termsandconditionVisible = false;
    super.initState();
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.green,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _customField(String str) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromRGBO(255, 255, 255, 0.5),
      ),
      height: 40,
      width: MediaQuery.of(context).size.width * 0.6,
      margin: EdgeInsets.only(top: 10, bottom: 15),
      padding: EdgeInsets.only(left: 8, right: 8),
      child: TextFormField(
        // style: TextStyle(),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          suffixIcon: Icon(
            Icons.remove_red_eye,
            color: Colors.white70,
          ),
          hintText: str,
          hintStyle: TextStyle(color: Colors.white70),
        ),
      ),
      // decoration: BoxDecoration(
      //     color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
    );
  }

  Widget _customButton(String string, Color color, Color bordercolor) {
    return Container(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/images/acountback.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
            // Positioned(top: 40, right: 0, child: _menuButton()),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 140,
                    ),
                    Text(
                      "${widget.userName}",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            requestVisilble = !requestVisilble;
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              'connect account with:',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 19,
                                color: Colors.white70,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: requestVisilble,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 0,
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/Google Button.png"),
                              Image.asset('assets/images/Facebook Button.png'),
                              Image.asset("assets/images/Apple Button.png"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                passandsecuVisible = !passandsecuVisible;
                              });
                            },
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "password & security",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 19,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: passandsecuVisible,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 0,
                        padding: EdgeInsets.only(left: 15, right: 5),
                        child: MediaQuery.removePadding(
                            removeTop: true,
                            context: context,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 18),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            passwordchangeVisible =
                                                !passwordchangeVisible;
                                          });
                                        },
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              "change password",
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 19,
                                                color: Colors.white70,
                                                fontWeight: FontWeight.w700,
                                                height: 2,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Visibility(
                                  visible: passwordchangeVisible,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    // height: 0,
                                    padding: EdgeInsets.only(left: 5, right: 5),
                                    child: MediaQuery.removePadding(
                                        // removeTop: true,
                                        context: context,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              child: MaterialButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            AccountSettingPage()),
                                                  );
                                                },
                                                child: _customField(
                                                  "current password",
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: MaterialButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            AccountSettingPage()),
                                                  );
                                                },
                                                child: _customField(
                                                  "new password",
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: MaterialButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            AccountSettingPage()),
                                                  );
                                                },
                                                child: _customField(
                                                  "confirm new password",
                                                ),
                                              ),
                                            ),
                                            Text('I forgot my password.')
                                          ],
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 18),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            termsandconditionVisible =
                                                !termsandconditionVisible;
                                          });
                                        },
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              "terms & conditions",
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 19,
                                                  color: Colors.white70,
                                                  fontWeight: FontWeight.w700,
                                                  height: 2),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Visibility(
                                  visible: termsandconditionVisible,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    // height: 0,
                                    padding: EdgeInsets.only(left: 5, right: 5),
                                    child: MediaQuery.removePadding(
                                        // removeTop: true,
                                        context: context,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 100,
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AccountdeleteModal(),
                              );
                            },
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'delete account',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 19,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => LogoutModal(),
                              );
                            },
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'log out',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 19,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.85,
              left: MediaQuery.of(context).size.width * 0.3,
              // left: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromRGBO(121, 199, 156, 1),
                ),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                // clipBehavior: Clip.antiAlias, // Add This
                child: MaterialButton(
                  child: new Text("safe changes",
                      style: new TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          letterSpacing: 1,
                          color: Colors.white)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              content: const Text(
                            "Your password has been changed!",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              height: 1.4,
                            ),
                          ));
                        });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
