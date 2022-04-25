import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/styles.dart';
import '../components/header_widget.dart';
import '../components/notifcationHistoryWidget.dart';

class NotificationHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      child: SlideAnimation(
                        child: FadeInAnimation(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NotifcationHistoryWidget(),
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
                  child: Icon(
                    Icons.arrow_back,
                    size: 15,
                  ),
                  padding: EdgeInsets.all(6),
                  shape: CircleBorder(),
                ),
                Text(
                  "Notifications",
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
              boxShadow: [
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
