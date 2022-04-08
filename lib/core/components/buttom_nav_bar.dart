import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BottomBar> {
  // HomeScreen? _homeScreen;
  // ExploreViewPage? _exploreViewPage;
  // MyCartPage? _cartPage;
  // ProfilePage? _profile;

  final List _pages = [];

  @override
  void initState() {
    super.initState();
    // _homeScreen = const HomeScreen();
    // _exploreViewPage = const ExploreViewPage();
    // _cartPage = const MyCartPage();
    // _profile = const ProfilePage();

    // _pages.addAll([_homeScreen, _exploreViewPage, _cartPage, _profile]);
    // debugPrint("$_pages");
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (v) {
          setState(() {
            currentIndex = v;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.green,
        currentIndex: currentIndex,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'Home',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'Home',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'Home',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
