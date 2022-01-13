import 'package:flutter/material.dart';
import 'package:flutter_one/theme/colors.dart';
import 'package:flutter_icons/flutter_icons.dart';
import "package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart";
import 'daily_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 3;
  List<Widget> pages = [
    const DailyPage(),
    // StatsPage(),
    // BudgetPage(),
    // ProfilePage(),
    // CreatBudgetPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          selectedTab(4);
        },
        child: const Icon(Icons.add, size: 25),
        backgroundColor: Colors.pink
      //params
    ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked);
  }
  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        DailyPage(),
        Center(
          child: Text("Stats Page"),
        ),
        Center(
          child: Text("Create Budget Page"),
        ),
        Center(
          child: Text("Budget Page"),
        ),
        Center(
          child: Text("Profile Page"),
        ),
      ],
    );
  }
  Widget getFooter() {
    List<IconData> iconItems = [
      Ionicons.md_calendar,
      Ionicons.md_stats,
      Ionicons.md_wallet,
      Ionicons.ios_person,
    ];

    return AnimatedBottomNavigationBar(
      activeColor: primary,
      splashColor: secondary,
      inactiveColor: Colors.black.withOpacity(0.5),
      icons: iconItems,
      activeIndex: pageIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      iconSize: 25,
      rightCornerRadius: 10,
      onTap: (index) {
        selectedTab(index);
      },
      //other params
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
