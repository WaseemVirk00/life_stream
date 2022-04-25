import 'package:flutter/material.dart';

import '../Utils/styles.dart';

class NotifcationHistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // await Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => RideHistoryDetailPage(),
        //     ));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30.0),
              child: Text(
                "Title",
                style: CustomStyles.normalTextStyle(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 10),
              child: Text(
                "subtitle",
                style: CustomStyles.normalTextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 10),
              child: Text(
                'Today: 5:15 pm',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ],
        ),
        margin: EdgeInsets.only(left: 25, right: 25),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0x33303030),
              offset: Offset(0, 5),
              blurRadius: 15,
              spreadRadius: 0,
            ),
          ],
        ),
      ),
    );
  }
}
