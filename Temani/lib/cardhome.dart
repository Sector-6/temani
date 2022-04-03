import 'package:flutter/material.dart';
import 'package:percobaan_pertama/databackground.dart';
import 'datasetkrim.dart';
import 'datakecil.dart';
// import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Stack(
          children: <Widget>[
            HomeCard(),
            const Positioned(
              top: 85,
              left: 70,
              child: Text(
                "Tuesday",
                style: TextStyle(
                  fontSize: 12,
                  // fontFamily: Roboto,
                ),
              ),
            ),
            Positioned(
              top: 25,
              left: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Yogyakarta, Indonesia",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Gondokusuman and nearby places",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                      // textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: 177,
                    height: 28,
                    color: Color(0xFFF5F5F5),
                    padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
                    child: Text(
                      "This is a crime rate graph based on your area scale, please be careful!",
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 88,
              left: 200,
              child: Row(
                children: [
                  dataKecil(),
                  dataKecil(),
                  dataKecil(),
                ],
              ),
            ),
            Positioned(
              top: 98,
              left: 177,
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.all(6),
                    child: Text(
                      "90%",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.all(6),
                    child: Text(
                      "90%",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.all(6),
                    child: Text(
                      "90%",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 130,
              left: 180,
              child: Column(children: [
                Container(
                  margin: EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Container(
                        height: 10,
                        width: 18,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text(
                            "18:00 - 02:00",
                            style: TextStyle(fontSize: 10),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Container(
                        height: 10,
                        width: 18,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text(
                            "10:00 - 14:00",
                            style: TextStyle(fontSize: 10),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Container(
                        height: 10,
                        width: 18,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text(
                            "16:00 - 18:00",
                            style: TextStyle(fontSize: 10),
                          )),
                    ],
                  ),
                ),
              ]),
            )
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
        height: 180,
        // child: dataSetKrim(),
        child: Container(
          //padding: EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 180,
              // color: Colors.red,
              child: Stack(
                children: [
                  dataBackground(),
                  dataSetKrim(),
                ],
              ),
            ),
          ),
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
