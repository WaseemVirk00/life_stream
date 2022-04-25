import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_stream/generated/assets.dart';
import 'package:lottie/lottie.dart';

import '../Utils/styles.dart';
import '../components/header_widget.dart';

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
              top: 47,
              child: Container(
                height: 800,
                width: mQ.width,
                child: ListView(
                  children: <Widget>[
                    Lottie.asset(
                      Assets.filesHelpGrow,
                      height: 180,
                      reverse: true,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          _Card1("How to ?"),
                          _Card1("How to ?"),
                          _Card1("How to ?"),
                          _Card1("How to ?"),
                          _Card1("How to ?"),
                          _Card1("How to ?"),
                          _Card1("How to ?"),
                          _Card1("How to ?"),
                        ],
                      ),
                    ),
                  ],
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
                  "Help",
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

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

Widget _Card1(String text) {
  return ExpandableNotifier(
      child: Column(
    children: <Widget>[
      ScrollOnExpand(
        scrollOnExpand: false,
        scrollOnCollapse: false,
        child: ExpandablePanel(
          theme: const ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            tapBodyToCollapse: true,
          ),
          header: Text(
            text,
            style: CustomStyles.headTextStyle(),
          ),
          collapsed: Text(
            loremIpsum,
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          expanded: Column(
            children: <Widget>[
              Text(
                loremIpsum,
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
          builder: (_, collapsed, expanded) {
            return Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Expandable(
                collapsed: collapsed,
                expanded: expanded,
                theme: const ExpandableThemeData(crossFadePoint: 0),
              ),
            );
          },
        ),
      ),
    ],
  ));
}
