import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:percobaan_pertama/information_icons.dart';
import 'background.dart';
import 'cardhome.dart';
import 'cardCategory.dart';
import 'cardDiscover.dart';
// import 'datasetkrim.dart';
// import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class FullHome extends StatelessWidget {
  const FullHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 15,
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
                    margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
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
              flex: 8,
              child: Container(
                // color: Colors.blue,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
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
                            const Flexible(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "See all",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0XFFFF93A3)),
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
            flex: 18,
            child: Container(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CardCategory(),
              ],
            )),
          ),
          Flexible(
              flex: 5,
              child: Container(
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
                                      fontSize: 12, color: Color(0XFFFF93A3)),
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
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CardDiscover(),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
