import 'package:flutter/material.dart';
import 'package:percobaan_pertama/information_icons.dart';
import 'background.dart';
import 'cardhome.dart';
import 'cardCategory.dart';
import 'cardDiscover.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

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
      Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 18,
                child: Container(
                  //color: Colors.red,
                  margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // container(),
                    children: <Widget>[
                      Container(
                        //margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: const Text(
                          "Good Morning, Rafly Zaki",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: const Text(
                          "Temani",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                          // textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Flexible(flex: 40, child: CardHome()),
              Flexible(
                  flex: 5,
                  child: Container(
                    //color: Colors.blue,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        child: Text(
                                          "Category",
                                          style: TextStyle(fontSize: 20),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    )),
                                Flexible(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "See all",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0XFFFF93A3)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Flexible(
                flex: 23,
                child: Container(
                    // color: Colors.red,
                    child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardCategory(),
                  ],
                  //color: Colors.blue,
                )),
              ),
              Flexible(
                  flex: 5,
                  child: Container(
                    // color: Colors.blue,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        child: Text(
                                          "Discover",
                                          style: TextStyle(fontSize: 20),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    )),
                                Flexible(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "See all",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0XFFFF93A3)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Flexible(
                flex: 46,
                child: Container(
                    // color: Colors.red,
                    child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardDiscover(),
                  ],
                  //color: Colors.blue,
                )),
              ),
            ],
          ),
        ),
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