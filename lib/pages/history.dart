import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/blood_group.dart';
import '../components/header_text_widget.dart';
import '../models/historyModel.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: null,
        body: headerTextWidget.headerTextWidget(
            title: "History",
            subTitle:
                "Something will be written here but I don't know who willdo that",
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
                      Tab(text: "Recent Donations"),
                      Tab(text: "My Donations"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 0, bottom: 100),
                  height: MediaQuery.of(context).size.height,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ListView.builder(
                          padding: const EdgeInsets.only(top: 20),
                          itemCount: historyitemList.historylist.length,
                          scrollDirection: Axis.vertical,
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (_, index) {
                            return AnimationConfiguration.staggeredList(
                              position: index,
                              child: SlideAnimation(
                                child: FadeInAnimation(
                                  child: buildCard("A+", "Muhammad Waseem",
                                      "20-FEB-2022", "10 am", "Lahore"),
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
                                  child: buildCard("A+", "Muhammad Waseem",
                                      "20-FEB-2022", "10 am", "Lahore"),
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

  Card buildCard(String blood_group, String p_Name, String date, String time,
      String location) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              children: [
                bloodGroup(
                  text: blood_group,
                ),
                Expanded(
                  child: Text(p_Name.toUpperCase(),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Date", style: GoogleFonts.heebo()),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(date,
                        style: GoogleFonts.heebo(fontWeight: FontWeight.w700)),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Time", style: GoogleFonts.heebo()),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(time,
                        style: GoogleFonts.heebo(fontWeight: FontWeight.w700)),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location", style: GoogleFonts.heebo()),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(location.toUpperCase(),
                        style: GoogleFonts.heebo(fontWeight: FontWeight.w700)),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
