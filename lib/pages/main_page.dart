import 'package:flutter/material.dart';
import 'package:life_stream/pages/find_blood_dononrs.dart';
import 'package:life_stream/pages/history.dart';
import 'package:life_stream/pages/profile_page.dart';
import 'package:life_stream/pages/requests_page.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentindex = 0;

  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List pages = [
      const FindBloodPage(),
      const RequestPage(),
      const HomePage(),
      const HistoryPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.shifting,
        onTap: onTap,
        currentIndex: currentindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(1),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(
              label: "Find Donors", icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(
              label: "Requests", icon: Icon(Icons.sticky_note_2_outlined)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.add)),
          BottomNavigationBarItem(
              label: "History", icon: Icon(Icons.access_time_outlined)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
