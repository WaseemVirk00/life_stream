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
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_outlined,
                      size: 32,
                    ),
                    const SizedBox(
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
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Text("3 Donors found in your area",
                          style: GoogleFonts.heebo()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
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
                                padding: const EdgeInsets.all(10.0),
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
                                            Text("Last Donation",
                                                style: GoogleFonts.heebo()),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text("4 Month ago",
                                                style: GoogleFonts.heebo(
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 30,
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
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 60,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: Container(
                                              width: 170,
                                              child: Row(
                                                children: const [
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
