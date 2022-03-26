import 'package:flutter/material.dart';
import 'package:percobaan_pertama/databackground.dart';
import 'datasetkrim.dart';
// import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            HomeCard(),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Card HomeCard() {
    return Card(
      elevation: 5,

      child: Container(
        height: 150,
        // child: dataSetKrim(),
        child: Stack(
          children: [
            dataBackground(),
            dataSetKrim(),
          ],
        ),
        //margin: const EdgeInsets.all(5),
        // child: const Icon(Icons.account_box)
      ),
      //const Text("Account Box")
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
