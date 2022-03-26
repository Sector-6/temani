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
        margin: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
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
      elevation: 5,

      child: Container(
        height: 190,
        width: 131,
        // color: Colors.white,
        // margin: const EdgeInsets.all(0),
        child: Column(children: [
          Icon(
            iconData,
            size: 40,
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(
              text,
              style: const TextStyle(fontSize: 8),
            ),
          ),
        ]),

        //child: dataSetKrim(),
        //margin: const EdgeInsets.all(5),
        // child: const Icon(Icons.account_box)
      ),
      //const Text("Account Box")
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
