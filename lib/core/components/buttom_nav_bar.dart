import 'package:contact/core/components/size_konfig.dart';
import 'package:contact/core/constants/const_color.dart';
import 'package:contact/screens/contact_page.dart';
import 'package:contact/screens/history_page.dart';
import 'package:contact/screens/new_page.dart';
import 'package:contact/screens/profile_page.dart';
import 'package:contact/screens/saved_page.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BottomBar> {
  ContactPage? _contactPage;
  HistoryPage? _historyPage;
  NewPage? _newPage;
  SavedPage? _savedPage;
  ProfilePage? _profile;

  final List _pages = [];

  @override
  void initState() {
    super.initState();

    _contactPage = const ContactPage();
    _historyPage = const HistoryPage();
    _newPage = const NewPage();
    _savedPage = const SavedPage();
    _profile = const ProfilePage();

    _pages.addAll([_contactPage, _historyPage, _newPage, _savedPage, _profile]);
    debugPrint("$_pages");
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
        selectedItemColor: ConstColor.white,
        unselectedItemColor: ConstColor.selektColor,
        currentIndex: currentIndex,
        items:  [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.description_outlined),
            ),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.history),
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.add_box_outlined),
            ),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.bookmark_outline_sharp),
            ),
            label: 'Saved',
          ),
         BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.person),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
