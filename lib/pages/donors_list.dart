import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/styles.dart';
import '../components/blood_group.dart';
import '../components/header_widget_bg.dart';

class DonorsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SizedBox(
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
              child: SizedBox(
                height: mQ.height * 0.8,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      child: const SlideAnimation(
                        child: FadeInAnimation(
                            child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: DonorsList_Widget(),
                        )),
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              )),
          Positioned(
            top: 50.0,
            left: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.white,
                  textColor: Colors.green,
                  child: const Icon(
                    Icons.arrow_back,
                    size: 15,
                  ),
                  padding: const EdgeInsets.all(6),
                  shape: const CircleBorder(),
                ),
                Text(
                  "Donors List",
                  style: CustomStyles.cardBoldTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DonorsList_Widget extends StatelessWidget {
  const DonorsList_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Last Donation", style: GoogleFonts.heebo()),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("4 Month ago",
                        style: GoogleFonts.heebo(fontWeight: FontWeight.w700)),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location", style: GoogleFonts.heebo()),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("Lahore",
                        style: GoogleFonts.heebo(fontWeight: FontWeight.w700)),
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
                    child: SizedBox(
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
    );
  }
}

Widget _ListofHistory(BuildContext context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 20,
                    color: Colors.black12),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () async {
                  // await Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => HistoryDetailPage(),
                  //     ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: CustomStyles.headTextStyle(),
                      ),
                      Text(
                        'Subtitle',
                        style: CustomStyles.normalTextStyle(),
                      ),
                      Text(
                        "10/2/2019",
                        style: GoogleFonts.laila(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
