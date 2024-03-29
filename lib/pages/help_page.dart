import 'package:flutter/material.dart';

import '../components/header_text_widget.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  bool chnageButton = false;

  movetohome(BuildContext context) async {}

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: headerTextWidget.headerTextWidget(
          backPressed: () {
            Navigator.of(context).pop();
          },
          title: "Help",
          subTitle:
              "Something will be written here but I don't know who will dothat",
          cwidget: Column(
            children: [
              expansionTileItem(),
              expansionTileItem(),
              expansionTileItem(),
            ],
          )),
    );
  }

  ExpansionTile expansionTileItem() {
    String lorem =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum";
    return ExpansionTile(
      collapsedIconColor: Colors.black,
      iconColor: Colors.black,
      title: const Text(
        "How to?",
        style: const TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "$lorem",
              style: const TextStyle(
                  color: const Color(0xff66686E),
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
