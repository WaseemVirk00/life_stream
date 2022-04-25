import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:life_stream/Utils/theme.dart';
import 'package:life_stream/generated/assets.dart';
import 'package:life_stream/pages/help_page.dart';
import 'package:styled_widget/styled_widget.dart';

import '../Utils/styles.dart';
import 'edit_profile.dart';
import 'notification_history_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;
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
                    Text("Profile",
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
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(Assets.imagesProfile),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Muhammad Waseem",
                              style: GoogleFonts.heebo(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Donations", style: GoogleFonts.heebo()),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("4",
                                      style: GoogleFonts.heebo(
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Last Donation",
                                      style: GoogleFonts.heebo()),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("4 ago",
                                      style: GoogleFonts.heebo(
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Icon(
                //       Icons.favorite_border,
                //       color: Colors.red,
                //     ),
                //     SizedBox(
                //       width: 10,
                //     ),
                //     Text(
                //       "I Want to Donate",
                //       style: GoogleFonts.heebo(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w600,
                //           color: Colors.black),
                //     ),
                //     Expanded(
                //       child: Align(
                //         alignment: Alignment.centerRight,
                //         child: Switch(
                //           value: isSwitched,
                //           onChanged: (value) {
                //             setState(() {
                //               isSwitched = value;
                //             });
                //           },
                //           activeTrackColor: Colors.red,
                //           activeColor: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                Settings(),
                //   SizedBox(
                //     height: 10,
                //   ),
                //   _ListItem(
                //       Icon(
                //         Icons.person,
                //         color: Colors.green,
                //       ),
                //       "Account"),
                //   SizedBox(
                //     height: 20,
                //   ),
                //   _ListItem(
                //       Icon(
                //         Icons.notifications_active_outlined,
                //         color: Colors.red.withOpacity(0.8),
                //       ),
                //       "Notifications"),
                //
                //   SizedBox(
                //     height: 20,
                //   ),
                //   _ListItem(
                //       Icon(
                //         Icons.help_outline,
                //       ),
                //       "Help"),
                //   SizedBox(
                //     height: 20,
                //   ),
                //   _ListItem(
                //       Icon(
                //         Icons.info_outline,
                //         color: Colors.green.withOpacity(0.6),
                //       ),
                //       "About"),
                //   SizedBox(
                //     height: 20,
                //   ),
                //   _ListItem(
                //       Icon(
                //         Icons.logout_outlined,
                //         color: Colors.green.withOpacity(0.6),
                //       ),
                //       "Logout"),
              ],
            )),
      ),
    );
  }

  Widget _ListItem(Icon icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
        ),
        icon,
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.heebo(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ],
    );
  }
}

class SettingsItemModel {
  final IconData icon;
  final Color color;
  final String title;
  final String description;

  const SettingsItemModel({
    required this.color,
    required this.description,
    required this.icon,
    required this.title,
  });
}

const List<SettingsItemModel> settingsItems = [
  SettingsItemModel(
    icon: Icons.person,
    color: Color(0xff8D7AEE),
    title: 'Account',
    description: 'Manage your account',
  ),
  SettingsItemModel(
    icon: Icons.notifications,
    color: Color(0xff5FD0D3),
    title: 'Notifications',
    description: 'Take over the news in time',
  ),
  SettingsItemModel(
    icon: Icons.help_outline,
    color: Color(0xffBFACAA),
    title: 'Help',
    description: 'Know more about us',
  ),
  SettingsItemModel(
    icon: Icons.logout_outlined,
    color: Color(0xff5FD0D3),
    title: 'Logout',
    description: 'Switch account',
  ),
];

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) => settingsItems
      .map((settingsItem) => SettingsItem(
            settingsItem.icon,
            settingsItem.color,
            settingsItem.title,
            settingsItem.description,
          ))
      .toList()
      .toColumn();
}

class SettingsItem extends StatefulWidget {
  SettingsItem(this.icon, this.iconBgColor, this.title, this.description);

  final IconData icon;
  final Color iconBgColor;
  final String title;
  final String description;

  @override
  _SettingsItemState createState() => _SettingsItemState();
}

class _SettingsItemState extends State<SettingsItem> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final settingsItem =
        ({required Widget child}) => Styled.widget(child: child)
            .alignment(Alignment.center)
            .borderRadius(all: 15)
            .ripple()
            .backgroundColor(Colors.white, animate: true)
            .clipRRect(all: 25) // clip ripple
            .borderRadius(all: 25, animate: true)
            .elevation(
              pressed ? 0 : 20,
              borderRadius: BorderRadius.circular(25),
              shadowColor: Color(0x30000000),
            ) // shadow borderRadius
            .constrained(height: 80)
            .padding(vertical: 10) // margin
            .gestures(
              onTapChange: (tapStatus) => setState(() => pressed = tapStatus),
              onTapDown: (details) => print('tapDown'),
              onTap: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfilePage(),
                    ));
              },
            )
            .animate(Duration(milliseconds: 150), Curves.easeOut);

    final Widget icon = Icon(widget.icon, size: 20, color: Colors.white)
        .padding(all: 12)
        .decorated(
          color: widget.iconBgColor,
          borderRadius: BorderRadius.circular(30),
        )
        .padding(left: 15, right: 10);

    final Widget title = Text(
      widget.title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ).padding(bottom: 5);

    final Widget description = Text(
      widget.description,
      style: TextStyle(
        color: Colors.black26,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    );

    return settingsItem(
      child: <Widget>[
        icon,
        <Widget>[
          title,
          description,
        ].toColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ].toRow(),
    );
  }
}
