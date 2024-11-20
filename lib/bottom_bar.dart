import 'package:ali_haider_project/list_view_demo.dart';
import 'package:ali_haider_project/login.dart';
import 'package:ali_haider_project/page_view.dart';
import 'package:flutter/material.dart';

class BottomBarView extends StatefulWidget {
  BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int selectedIndex = 0;

  List<Widget> screenList = [LoginView(), ListViewDemo(), PageViewDemo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            selectedIndex = val;
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
