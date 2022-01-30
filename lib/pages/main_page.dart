import 'package:flutter/material.dart';
import 'package:money_allocations/pages/home_page.dart';

import '../thema.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomNavbarItem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset(
          "assets/icon_button_1.png",
          width: 21,
          height: 23,
        ),
        title: Text(""),
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          "assets/icon_button_2.png",
          width: 21,
          height: 23,
        ),
        title: Text(""),
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          "assets/icon_button_3.png",
          width: 21,
          height: 23,
        ),
        title: Text(""),
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          "assets/icon_button_4.png",
          width: 21,
          height: 23,
        ),
        title: Text(""),
      ),
    ];

    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavbarItem,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhiteColor,
        elevation: 1,
      ),
    );
  }
}
