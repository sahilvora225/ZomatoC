import 'package:flutter/material.dart';

import '../screens/order_screen.dart';
import '../screens/underconstruction_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomNavigationIndex = 0;
  List screens = [
    OrderScreen(),
    UnderconstructionScreen('Go Out'),
    UnderconstructionScreen('Gold'),
    UnderconstructionScreen('Explore'),
    UnderconstructionScreen('Profile'),
  ];

  void bottomNavigationTap(int index) {
    setState(() {
      bottomNavigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[bottomNavigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Order'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_walk),
            title: Text('Go Out'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text('Gold'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
        ],
        currentIndex: bottomNavigationIndex,
        onTap: bottomNavigationTap,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor.withOpacity(0.5),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
