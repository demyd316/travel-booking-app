import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/AccountSetting/ticketspanelmodal.dart';
import 'package:myapp/chooseadventure.dart';
import 'package:myapp/rightsidepage.dart';
import 'package:myapp/surpriseadventuresummarypage.dart';

import 'AccountSetting/redflagmodal.dart';
// import 'package:flutter_xlider/flutter_xlider.dart';

class SurpriseadventurePanel extends StatefulWidget {
  @override
  _SurpriseadventurePanelState createState() => _SurpriseadventurePanelState();
}

class _SurpriseadventurePanelState extends State<SurpriseadventurePanel> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  BitmapDescriptor pinLocationIcon;
  bool qRLVisible = false;

  @override
  void initState() {
    super.initState();
    setCustomMapPin();
  }

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/images/Group (1).png');
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ChooseAdventure()),
        );

        // Navigator.pop(context);
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

  Widget _menuButton() {
    return InkWell(
      onTap: () {
        _scaffoldKey.currentState.openEndDrawer();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.dehaze,
                color: Colors.green,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: RightSidePage(),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
          Positioned(top: 40, left: 0, child: _backButton()),
          Positioned(top: 40, right: 0, child: _menuButton()),
          Positioned(
            top: 80,
            right: 0,
            child: GestureDetector(
              onTap: () {
                // setState(() {
                //   redvision = false;
                // });
                showDialog(
                  context: context,
                  builder: (context) => RedflagModal(),
                );
                // print("object");
              },
              child: Image.asset("assets/images/red flag report.png"),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // padding: EdgeInsets.only(left: 30, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/start point.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Image.asset(
                        "assets/images/M.png",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 90,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Image.asset(
                //       "assets/images/1 adventure attraction.png",
                //       height: 90,
                //     ),
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => TicketspanelModal(),
                        );
                      },
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/ticket.png",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Ⓐ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.grey),
                                    ),
                                    Text("10:00"),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Image.asset(
                                  "assets/images/Group.png",
                                  color: Colors.grey,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        width: 0.5, color: Colors.grey),
                                    bottom: BorderSide(
                                        width: 0.5, color: Colors.grey))),
                          ),
                        ),
                        Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Prinsengracht 476"),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("320m"),
                                      Text("4 min"),
                                    ],
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          width: 0.5, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 0.5, color: Colors.grey))),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("10:04"),
                                SizedBox(height: 20),
                                Image.asset(
                                  "assets/images/tram.png",
                                  color: Colors.grey,
                                  height: 50,
                                ),
                                SizedBox(height: 20),
                                Text("10:14")
                              ],
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        width: 0.5, color: Colors.grey),
                                    bottom: BorderSide(
                                        width: 0.5, color: Colors.grey))),
                          ),
                        ),
                        Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Het Funen"),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.arrow_right_alt,
                                              color: Colors.green),
                                          Text("  DRECTION"),
                                        ],
                                      ),
                                      Text("10 min"),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("S stops"),
                                      Icon(Icons.keyboard_arrow_down,
                                          color: Colors.green)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Van Hallstraat")
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          width: 0.5, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 0.5, color: Colors.grey))),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Ⓑ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.grey),
                                    ),
                                    Image.asset(
                                      "assets/images/Group.png",
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Text("10:15"),
                              ],
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        width: 0.5, color: Colors.grey),
                                    bottom: BorderSide(
                                        width: 0.5, color: Colors.grey))),
                          ),
                        ),
                        Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("100m"),
                                      Text("1 min"),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Text("your destination is on the right"),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          width: 0.5, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 0.5, color: Colors.grey))),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
