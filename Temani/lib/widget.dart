import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:percobaan_pertama/fullhome.dart';
import 'package:percobaan_pertama/information_icons.dart';
import 'background.dart';
import 'cardhome.dart';
import 'cardCategory.dart';
import 'cardDiscover.dart';
import 'fullhome.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  // ignore: unused_field

  get children => null;

  get body => null;

  get bottomNavigationBar => null;

  get text => null;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const BackgroundsApp(),
      Container(
        child: Column(children: [
          Flexible(
            flex: 30,
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Flexible(
            flex: 70,
            child: Container(
              color: Colors.white,
            ),
          ),
        ]),
      ),
      Scaffold(
        body: FullHome(),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          items: newMethod,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      )
    ]);
  }

  List<BottomNavigationBarItem> get newMethod {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Information.home,
          color: Color(0xFFB7B7B7),
        ),
        label: '',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Information.phone_call,
          color: Color(0xFFB7B7B7),
        ),
        label: '',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Information.location,
          color: Color(0xFFB7B7B7),
        ),
        label: '',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Information.message,
          color: Color(0xFFB7B7B7),
        ),
        label: '',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Information.user,
          color: Color(0xFFB7B7B7),
        ),
        label: '',
        backgroundColor: Colors.white,
      ),
    ];
  }

  // ignore: non_constant_identifier_names
}
