// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'Screens/NavScreens/billing.dart';
import 'Screens/NavScreens/home.dart';
import 'Screens/NavScreens/profile.dart';
import 'Screens/NavScreens/rooms.dart';
import 'Screens/NavScreens/tenants.dart';

class ConsistentUI extends StatefulWidget {
  const ConsistentUI({Key? key}) : super(key: key);

  @override
  _ConsistentUIState createState() => _ConsistentUIState();
}

class _ConsistentUIState extends State<ConsistentUI> {
  String title = "Home";
  int currentIndex = 0;
  final screens = [
    Home(),
    Tenants(),
    Rooms(),
    Billing(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: customNavBar(),
    );
  }

  AppBar customAppBar() {
    return title != 'Profile'
        ? AppBar(
            backgroundColor: Color(0xff09548c),
            title: Text(title),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ],
          )
        : AppBar(
            title: Text(title),
            backgroundColor: Color(0xff09548c),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
            ],
          );
  }

  BottomNavigationBar customNavBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedIconTheme: IconThemeData(color: Color(0xff09548c)),
      selectedItemColor: Color(0xff09548c),
      selectedLabelStyle: TextStyle(color: Color(0xff09548c)),
      onTap: (index) {
        setState(() {
          currentIndex = index;
          if (index == 0) {
            title = 'Home';
          } else if (index == 1) {
            title = 'Tenants';
          } else if (index == 2) {
            title = 'Rooms';
          } else if (index == 3) {
            title = 'Billing';
          } else {
            title = 'Profile';
          }
        });
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.supervisor_account,
            ),
            label: "Tenants"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.meeting_room_sharp,
            ),
            label: "Room"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
            ),
            label: "Billing"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile"),
      ],
    );
  }
}
