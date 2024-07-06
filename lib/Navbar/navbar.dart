import 'package:flutter/material.dart';
import 'package:travelappui/AudioToText/home3.dart';
import 'package:travelappui/HomePage/myhome_page.dart';
import 'package:travelappui/TextToAudio/Homee.dart';


class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const MyHomePage(),
    const TextPage(),
    const AudioPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        backgroundColor:Color(0XFFF3ECEE),
        currentIndex: _currentIndex,
          showSelectedLabels:true,
        showUnselectedLabels: false,
        selectedItemColor:Color(0xFFA36C88),
        unselectedItemColor: Colors.black,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Text',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.audiotrack),
            label: 'Audio',
          ),
        ],
      ),
    );
  }
}
