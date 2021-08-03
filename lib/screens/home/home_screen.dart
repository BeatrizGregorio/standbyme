import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:standbyme_tcc/components/custom_drawer.dart';
import 'package:standbyme_tcc/constants.dart';
import 'package:standbyme_tcc/screens/home/components/body.dart';

import '../../size_config.dart';
import '../calendar/calendar_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        shadowColor: Colors.transparent,
        title: Image.asset(
          "assets/images/logo_porta.PNG",
          height: SizeConfig.screenHeight * 0.08,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {},
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (p) {
          setState(() {
            _page = p;
          });
        },
        children: [Body(), CalendarScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30.0,
        currentIndex: _page,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today_rounded,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attribution_rounded,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attribution_rounded,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attribution_rounded,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(_selectedIndex,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
}