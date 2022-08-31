// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:life_stream/generated/assets.dart';

import '../Utils/routers.dart';
import '../Utils/styles.dart';
import '../components/header_text_widget.dart';
import 'edit_profile.dart';

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
        body: headerTextWidget.headerTextWidget(
            title: "Profile",
            subTitle:
                "Something will be written here but I don't know who willdo that",
            cwidget: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 30, bottom: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage(Assets.imagesProfile),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Muhammad Waseem",
                              style: GoogleFonts.heebo(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ],
                      ),
                      const SizedBox(
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
                                  const SizedBox(
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
                                  const SizedBox(
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
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => EditProfilePage()));
                  },
                  title: Text(
                    "Account",
                    style: CustomStyles.cardBoldDarkTextStyle,
                  ),
                  subtitle: const Text(
                    "Manage your account",
                  ),
                  leading: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Notifications",
                    style: CustomStyles.cardBoldDarkTextStyle,
                  ),
                  subtitle: const Text("Take over the news in time"),
                  onTap: () {
                    Navigator.pushNamed(
                        context, MyRoutes.notificationHistoryPage);
                  },
                  leading: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Help",
                    style: CustomStyles.cardBoldDarkTextStyle,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.helpPage);
                  },
                  subtitle: const Text("Know more about us"),
                  leading: const Icon(
                    Icons.help_outline,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Logout",
                    style: CustomStyles.cardBoldDarkTextStyle,
                  ),
                  subtitle: const Text("Switch account"),
                  leading: const Icon(
                    Icons.logout_outlined,
                    color: Colors.black,
                  ),
                )
              ],
            )));
  }
}

class SettingsItemModel {
  final IconData icon;
  final Color color;
  final String title;
  final String description;
  final int indexItem;

  const SettingsItemModel({
    required this.color,
    required this.description,
    required this.icon,
    required this.title,
    required this.indexItem,
  });
}

const List<SettingsItemModel> settingsItems = [
  SettingsItemModel(
    icon: Icons.person,
    color: Color(0xff8D7AEE),
    title: 'Account',
    description: 'Manage your account',
    indexItem: 1,
  ),
  SettingsItemModel(
    icon: Icons.notifications,
    color: Color(0xff5FD0D3),
    title: 'Notifications',
    description: 'Take over the news in time',
    indexItem: 2,
  ),
  SettingsItemModel(
    icon: Icons.help_outline,
    color: Color(0xffBFACAA),
    title: 'Help',
    description: 'Know more about us',
    indexItem: 3,
  ),
  SettingsItemModel(
    icon: Icons.logout_outlined,
    color: Color(0xff5FD0D3),
    title: 'Logout',
    description: 'Switch account',
    indexItem: 4,
  ),
];
