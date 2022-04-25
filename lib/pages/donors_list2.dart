import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/blood_group.dart';

class DonorsList extends StatefulWidget {
  const DonorsList({Key? key}) : super(key: key);

  @override
  _DonorsListState createState() => _DonorsListState();
}

class _DonorsListState extends State<DonorsList> {
  @override
  Widget build(BuildContext context) {
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
                    Icon(
                      Icons.arrow_back_outlined,
                      size: 32,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Donors List",
                            style: GoogleFonts.heebo(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Text("3 Donors found in your area",
                          style: GoogleFonts.heebo()),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ListView.builder(
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
                                padding: EdgeInsets.all(10.0),
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
                                                  fontWeight: FontWeight.w600,
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
                                            Text("Last Donation",
                                                style: GoogleFonts.heebo()),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text("4 Month ago",
                                                style: GoogleFonts.heebo(
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Location",
                                                style: GoogleFonts.heebo()),
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
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 60,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: Container(
                                              width: 170,
                                              child: Row(
                                                children: [
                                                  Icon(Icons.person),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text("Request for Blood"),
                                                ],
                                              ),
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    })
              ],
            )),
      ),
    );
  }
}
