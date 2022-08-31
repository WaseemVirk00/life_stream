import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/theme.dart';
import '../components/blood_group.dart';
import '../components/header_text_widget.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return headerTextWidget.headerTextWidget(
        title: "Requests",
        subTitle:
            "See received blood requests and also check your requestsstatus",
        cwidget: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
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
            Container(
              padding: const EdgeInsets.only(left: 5, bottom: 5),
              height: MediaQuery.of(context).size.height,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                      padding: const EdgeInsets.only(top: 20),
                      itemCount: 30,
                      scrollDirection: Axis.vertical,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          child: SlideAnimation(
                            child: FadeInAnimation(
                              child: Card(
                                color: Colors.white,
                                elevation: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const bloodGroup(
                                            text: 'A+',
                                          ),
                                          Expanded(
                                            child: Text("Muhammad Waseem",
                                                style: GoogleFonts.heebo(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 60,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Date",
                                                  style: GoogleFonts.heebo()),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text("21Feb2022",
                                                  style: GoogleFonts.heebo(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Time",
                                                  style: GoogleFonts.heebo()),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text("03:30 pm",
                                                  style: GoogleFonts.heebo(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Location",
                                                  style: GoogleFonts.heebo()),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text("Lahore",
                                                  style: GoogleFonts.heebo(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              height: 40,
                                              width: 50,
                                              child: Center(
                                                  child: Row(
                                                children: const [
                                                  Icon(
                                                    Icons.check_circle,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    "Accept Request",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              )),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: MyTheme.kYellowLight,
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              height: 40,
                                              width: 50,
                                              child: const Center(
                                                  child: Text(
                                                "Reject Request",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                      padding: const EdgeInsets.only(top: 20),
                      itemCount: 30,
                      scrollDirection: Axis.vertical,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          child: SlideAnimation(
                            child: FadeInAnimation(
                              child: Card(
                                color: Colors.white,
                                elevation: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const bloodGroup(
                                            text: 'A+',
                                          ),
                                          Expanded(
                                            child: Text("Muhammad Waseem",
                                                style: GoogleFonts.heebo(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 60,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Date",
                                                  style: GoogleFonts.heebo()),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text("21Feb2022",
                                                  style: GoogleFonts.heebo(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Time",
                                                  style: GoogleFonts.heebo()),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text("03:30 pm",
                                                  style: GoogleFonts.heebo(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Location",
                                                  style: GoogleFonts.heebo()),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text("Lahore",
                                                  style: GoogleFonts.heebo(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.red
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              height: 40,
                                              width: 50,
                                              child: Center(
                                                  child: Row(
                                                children: const [
                                                  Icon(
                                                    Icons.pending,
                                                    color: Colors.black,
                                                  ),
                                                  Text(
                                                    "Pending",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              )),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: MyTheme.kYellowLight,
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              height: 40,
                                              width: 50,
                                              child: const Center(
                                                  child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
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
        ));
  }
}
