import 'package:flutter/material.dart';
import 'information_icons.dart';
// import 'datasetkrim.dart';
// import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Row(
          children: <Widget>[
            CategoryCard(Information.vector, "Informations", Color(0xFF031B88)),
            CategoryCard(Information.globe, "News", Color(0xFF6096FD)),
            CategoryCard(Information.fake_call, "Fake Call", Color(0xFF3850BB)),
            CategoryCard(Information.report, "Report", Color(0xFF031B88)),
            CategoryCard(Information.location, "Maps", Color(0xFF6096FD)),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Card CategoryCard(IconData iconData, String text, Color coloring) {
    return Card(
      elevation: 10,
      color: coloring,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        height: 65,
        width: 57,
        child: Column(children: [
          Container(
            margin: EdgeInsets.fromLTRB(9, 8, 9, 0),
            child: Icon(
              iconData,
              size: 30,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(text,
                style: const TextStyle(
                  fontSize: 8,
                  color: Colors.white,
                )),
          ),
        ]),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
