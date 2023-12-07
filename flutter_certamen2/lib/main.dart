// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_certamen2/Navbar.dart';
import 'package:flutter_certamen2/Perfil.dart';
import 'package:flutter_certamen2/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    
    const SplashScreen(),
    HomeScreen(),
    
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Navbar(
          currentIndex: _selectedIndex,
          onItemSelected: _onItemTapped,
        ),
     ),
);
}
}