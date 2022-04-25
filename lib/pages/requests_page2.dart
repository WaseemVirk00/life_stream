import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/styles.dart';
import '../Utils/theme.dart';
import '../components/blood_group.dart';
import '../components/header_widget.dart';

class RequestPage extends StatefulWidget {
  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            width: mQ.width,
            height: mQ.height,
          ),
          NoLogoHeaderWidget(
            height: mQ.height * 0.5,
            key: null,
          ),
          Positioned(
              top: mQ.height * 0.14,
              left: 5,
              right: 5,
              child: Container(
                height: mQ.height * 0.8,
                child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TabBar(
                                labelPadding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                controller: _tabController,
                                labelColor: Colors.black,
                                unselectedLabelStyle: GoogleFonts.heebo(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                unselectedLabelColor: Colors.grey,
                                labelStyle: GoogleFonts.heebo(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                                isScrollable: true,
                                indicatorSize: TabBarIndicatorSize.label,
                                tabs: const [
                                  Tab(text: "Received Requests"),
                                  Tab(text: "My Requests"),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 20, bottom: 100),
                            height: MediaQuery.of(context).size.height,
                            width: double.maxFinite,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                ListView.builder(
                                    padding: EdgeInsets.only(top: 20),
                                    itemCount: 30,
                                    scrollDirection: Axis.vertical,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (_, index) {
                                      return AnimationConfiguration
                                          .staggeredList(
                                        position: index,
                                        child: SlideAnimation(
                                          child: FadeInAnimation(
                                            child: Card(
                                              color: Colors.white,
                                              elevation: 2,
                                              child: Container(
                                                padding: EdgeInsets.all(5.0),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        bloodGroup(
                                                          text: 'A+',
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                              "Muhammad Waseem",
                                                              style: GoogleFonts.heebo(
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .black)),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 60,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Date",
                                                                style: GoogleFonts
                                                                    .heebo()),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text("21Feb2022",
                                                                style: GoogleFonts.heebo(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700)),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Time",
                                                                style: GoogleFonts
                                                                    .heebo()),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text("03:30 pm",
                                                                style: GoogleFonts.heebo(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700)),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Location",
                                                                style: GoogleFonts
                                                                    .heebo()),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text("Lahore",
                                                                style: GoogleFonts.heebo(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2)),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5,
                                                                    right: 5),
                                                            height: 40,
                                                            width: 50,
                                                            child: Center(
                                                                child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .check_circle,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                Text(
                                                                  "Accept Request",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            )),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                color: MyTheme
                                                                    .kYellowLight,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2)),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5,
                                                                    right: 5),
                                                            height: 40,
                                                            width: 50,
                                                            child: const Center(
                                                                child: Text(
                                                              "Reject Request",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                ListView.builder(
                                    padding: EdgeInsets.only(top: 20),
                                    itemCount: 30,
                                    scrollDirection: Axis.vertical,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (_, index) {
                                      return AnimationConfiguration
                                          .staggeredList(
                                        position: index,
                                        child: SlideAnimation(
                                          child: FadeInAnimation(
                                            child: Card(
                                              color: Colors.white,
                                              elevation: 2,
                                              child: Container(
                                                padding: EdgeInsets.all(5.0),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        bloodGroup(
                                                          text: 'A+',
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                              "Muhammad Waseem",
                                                              style: GoogleFonts.heebo(
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .black)),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 60,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Date",
                                                                style: GoogleFonts
                                                                    .heebo()),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text("21Feb2022",
                                                                style: GoogleFonts.heebo(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700)),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Time",
                                                                style: GoogleFonts
                                                                    .heebo()),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text("03:30 pm",
                                                                style: GoogleFonts.heebo(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700)),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Location",
                                                                style: GoogleFonts
                                                                    .heebo()),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text("Lahore",
                                                                style: GoogleFonts.heebo(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .red
                                                                    .withOpacity(
                                                                        0.1),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2)),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5,
                                                                    right: 5),
                                                            height: 40,
                                                            width: 50,
                                                            child: Center(
                                                                child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.pending,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                                Text(
                                                                  "Pending",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            )),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                color: MyTheme
                                                                    .kYellowLight,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2)),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5,
                                                                    right: 5),
                                                            height: 40,
                                                            width: 50,
                                                            child: Center(
                                                                child: Text(
                                                              "Cancel",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              )),
          Positioned(
            top: 50.0,
            left: 0.0,
            child: Column(
              children: [
                Text(
                  "Requests",
                  style: CustomStyles.cardBoldTextStyle,
                ),
                Text(
                    "See received blood requests and also check your requests status",
                    style: GoogleFonts.heebo()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
