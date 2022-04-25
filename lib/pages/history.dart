import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/theme.dart';
import '../components/blood_group.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text("History",
                        style: GoogleFonts.heebo(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                          "Something will be written here but I don't know who will do that",
                          style: GoogleFonts.heebo()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
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
                        Tab(text: "Recent Donations"),
                        Tab(text: "My Donations"),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, bottom: 100),
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
                            return AnimationConfiguration.staggeredList(
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
                                                child: Text("Muhammad Waseem",
                                                    style: GoogleFonts.heebo(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black)),
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
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Date",
                                                      style:
                                                          GoogleFonts.heebo()),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text("21Feb2022",
                                                      style: GoogleFonts.heebo(
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Time",
                                                      style:
                                                          GoogleFonts.heebo()),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text("03:30 pm",
                                                      style: GoogleFonts.heebo(
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Location",
                                                      style:
                                                          GoogleFonts.heebo()),
                                                  SizedBox(
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
                                          SizedBox(
                                            height: 10,
                                          ),
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
                            return AnimationConfiguration.staggeredList(
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
                                                child: Text("Muhammad Waseem",
                                                    style: GoogleFonts.heebo(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black)),
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
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Date",
                                                      style:
                                                          GoogleFonts.heebo()),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text("21Feb2022",
                                                      style: GoogleFonts.heebo(
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Time",
                                                      style:
                                                          GoogleFonts.heebo()),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text("03:30 pm",
                                                      style: GoogleFonts.heebo(
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Location",
                                                      style:
                                                          GoogleFonts.heebo()),
                                                  SizedBox(
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
                                          SizedBox(
                                            height: 10,
                                          ),
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
    );
  }
}
