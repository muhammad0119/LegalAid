import 'package:flutter/material.dart';
import '../dashboard/dashboard.dart';
import '../cases/cases.dart';
import '../appointements/appointements.dart';
class Home extends StatefulWidget {
  const Home
({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> _pages = <Widget>[
    Dashboard(),
    Cases(),
    Appointements(),
  ];
  void _onItemTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: _currentIndex,
        onTap:_onItemTap,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.download),
          label: 'Cases',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer),
          label: 'Appointements',
        ),
      ]),
    );
  }
}