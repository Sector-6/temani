import 'package:flutter/material.dart';
// import 'datasetkrim.dart';
// import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class CardDiscover extends StatelessWidget {
  const CardDiscover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // backgroundColor: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          // scrollDirection: Axis.horizontal,
          children: <Widget>[
            DiscoverCard(Icons.adb, "Informations"),
            DiscoverCard(Icons.adb, "Informations"),
            DiscoverCard(Icons.adb, "Informations"),
            DiscoverCard(Icons.adb, "Informations"),
            DiscoverCard(Icons.adb, "Informations"),
            DiscoverCard(Icons.adb, "Informations"),
            DiscoverCard(Icons.adb, "Informations"),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Card DiscoverCard(IconData iconData, String text) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      margin: EdgeInsets.all(10),
      // child: Stack(),
      child: Container(
        height: 190,
        width: 131,
        child: Stack(children: [
          // Container(
          //   // constraints: const BoxConstraints.expand(),
          //   decoration: const BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage("images/foto1.jpg"), fit: BoxFit.cover)),
          // ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft,
                  colors: [
                    Color(0xff6096FD).withOpacity(0.1),
                    Color(0xff6096FD).withOpacity(0.7),
                    Color(0xff031B88).withOpacity(0.9),
                  ],
                  stops: [
                    0.0,
                    0.78,
                    1.0,
                  ]),
            ),
          ),
        ]),
      ),
      //const Text("Account Box")
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
