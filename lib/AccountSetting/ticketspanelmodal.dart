import 'package:flutter/material.dart';
import 'package:myapp/AccountSetting/ticketsdeletemodal.dart';

class TicketspanelModal extends StatefulWidget {
  @override
  _TicketspanelModalState createState() => _TicketspanelModalState();
}

class _TicketspanelModalState extends State<TicketspanelModal> {
  bool qrVisible = false;
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
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2, color: Colors.blue[200]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "  ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.picture_as_pdf,
                                  color: Colors.blue[200],
                                ),
                                Text(
                                  "  Vondelpark_ticket.pdf",
                                  style: TextStyle(
                                    fontSize: 13,
                                    height: 1.2,
                                    color: Colors.black,
                                    fontFamily: "Roboto",
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              top: -30,
                              right: -35,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => TicketsdeleteModal(),
                                  );
                                },
                                child: Image.asset(
                                  "assets/images/recycle.png",
                                  width: 80,
                                ),
                              )),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 8),
                            // alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "  ",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.qr_code_outlined,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          qrVisible = !qrVisible;
                                        });
                                      },
                                      child: Text(
                                        "  Vondelpark_ticket",
                                        style: TextStyle(
                                          fontSize: 13,
                                          height: 1.2,
                                          color: Colors.black,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                qrVisible
                                    ? Icon(
                                        Icons.qr_code,
                                        size: 170,
                                      )
                                    : Container()
                                // Visibility(
                                //   visible: true,
                                //   child: Row(
                                //     children: [
                                //       // Text("data")
                                //       // Image.asset(
                                //       //   "assets/images/qrlbig.png",
                                //       Icon(
                                //         Icons.qr_code,
                                //         size: 50,
                                //       )
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: -30,
                            right: -35,
                            child: Image.asset(
                              "assets/images/recycle.png",
                              width: 80,
                            ),
                          ),
                        ],
                      )),
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
