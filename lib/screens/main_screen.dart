import 'package:flutter/material.dart';
import 'package:kitchen_organizer_app/screens/add.dart';
import 'package:kitchen_organizer_app/screens/home.dart';
import 'package:kitchen_organizer_app/screens/Pantry.dart';
import 'package:kitchen_organizer_app/screens/profile.dart';

import 'Refrigerator.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;

  List icons = [
    Icons.home,
    Icons.emoji_food_beverage_outlined,
    Icons.add,
    Icons.cake_outlined,
    Icons.person,
  ];

  List pages = [
    Home(),
    Pantry(),
    Add(),
    Refrigerator(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: List.generate(5, (index) =>  pages[index] ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // SizedBox(width: 7),
            buildTabIcon(0),
            buildTabIcon(1),
            buildTabIcon(3),
            buildTabIcon(4),
            // SizedBox(width: 7),
          ],
        ),
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(
          Icons.add,
        ),
        onPressed: () => _pageController.jumpToPage(2),
      ),
    );
  }

 // void navigationTapped(int page) {
 //    _pageController.jumpToPage(page);
 //  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  buildTabIcon(int index) {
      return Container(
        margin: EdgeInsets.fromLTRB( index == 3 ? 30 : 0, 0,  index == 1 ? 30 : 0, 0),
        child: IconButton(
          icon: Icon(
            icons[index],
            size: 24.0,
          ),
          color: _page == index
              ? Theme.of(context).accentColor
              : Theme.of(context).textTheme.caption.color,
          onPressed: () => _pageController.jumpToPage(index),
        ),
      );
  }
}
