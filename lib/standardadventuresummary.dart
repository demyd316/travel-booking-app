// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:myapp/rightmenu.dart';
import 'package:myapp/rightsidepage.dart';
import 'package:myapp/standardadventurepanelpage.dart';

import 'AccountSetting/redflagmodal.dart';

// import 'AccountSetting/ticketspanelmodal.dart';
// import 'whatdoyoulike.dart';

class StandardadventureSummary extends StatefulWidget {
  @override
  _StandardadventureSummaryState createState() =>
      _StandardadventureSummaryState();
}

class _StandardadventureSummaryState extends State<StandardadventureSummary> {
  // GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  BitmapDescriptor pinLocationIcon;
  bool qRLVisible = false;
  // GlobalKey<ScaffoldState> _scaffoldKey1 = GlobalKey<ScaffoldState>();
  AnimationController controller;
  bool redvision;
  bool titlevision;
  double imageheight = 85;
  @override
  void initState() {
    redvision = false;
    titlevision = true;
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
                size: 60,
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
        // print("object");
        // _scaffoldKey.currentState.openEndDrawer();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
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

//animation part

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      // endDrawer: RightSidePage(),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(214, 220, 220, 1)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
            ),
            Positioned(
              top: 80,
              right: 0,
              child: Visibility(
                visible: redvision,
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
              height: 70,
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
            Positioned(top: 40, right: 0, child: _menuButton()),
            Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Container(
                  height: 100,
                  child: Visibility(
                    visible: titlevision,
                    child: Column(
                      children: [
                        // SizedBox(
                        //   height: 100,
                        // ),
                        Text(
                          "your adventure",
                          style: TextStyle(
                            fontSize: 29,
                            fontFamily: 'Roboto Medium',
                            // height: 1.2,
                            letterSpacing: 1.81,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "summary",
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'Roboto Medium',
                            // height: 1.2,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.81,
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Summary Background.png",
                        ),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Grouptime.png",
                            ),
                            Text(
                              " 1h    ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto",
                                color: Colors.white,
                              ),
                            ),
                            Image.asset(
                              "assets/images/Groupdollar.png",
                            ),
                            Text(" 10    ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto",
                                  color: Colors.white,
                                )),
                            Image.asset(
                              "assets/images/Groupman.png",
                            ),
                            Text(
                              " 1    ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto",
                                color: Colors.white,
                              ),
                            ),
                            Image.asset(
                              "assets/images/round trip.png",
                            ),
                            Text(
                              " ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto",
                                color: Colors.white,
                              ),
                            ),
                            Image.asset(
                              "assets/images/Group.png",
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          right: 60,
                          child: Row(
                            children: [
                              Image.asset("assets/images/summary edits.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: () {
                          // print("object");
                          setState(() {
                            titlevision = !titlevision;
                            redvision = !redvision;

                            if (imageheight > 85) {
                              imageheight = 85;
                            } else {
                              imageheight = imageheight * 2;
                            }
                          });
                        },
                        child: Image.asset(
                          "assets/images/1 adventure attraction.png",
                          height: imageheight,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/images/Destination Board 2.png",
                      height: 85,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Destination Board 3.png",
                      height: 85,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => StandardAdventurePanelPage()),
                    );
                  },
                  child: Visibility(
                    visible: titlevision,
                    child: Positioned(
                      bottom: 20,
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/GO.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
