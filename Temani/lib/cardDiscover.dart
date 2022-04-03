import 'package:flutter/material.dart';

class CardDiscover extends StatelessWidget {
  const CardDiscover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          children: <Widget>[
            DiscoverCard(Icons.adb, "Thaiger", "Bangkok, Thailand - 2/3/22 ",
                "Tangmo's cause of death revealed, 5 boat buddies face charges"),
            DiscoverCard(Icons.adb, "Thaiger", "Bangkok, Thailand - 2/3/22 ",
                "Tangmo's cause of death revealed, 5 boat buddies face charges"),
            DiscoverCard(Icons.adb, "Thaiger", "Bangkok, Thailand - 2/3/22 ",
                "Tangmo's cause of death revealed, 5 boat buddies face charges"),
            DiscoverCard(Icons.adb, "Thaiger", "Bangkok, Thailand - 2/3/22 ",
                "Tangmo's cause of death revealed, 5 boat buddies face charges"),
            DiscoverCard(Icons.adb, "Thaiger", "Bangkok, Thailand - 2/3/22 ",
                "Tangmo's cause of death revealed, 5 boat buddies face charges"),
            DiscoverCard(Icons.adb, "Thaiger", "Bangkok, Thailand - 2/3/22 ",
                "Tangmo's cause of death revealed, 5 boat buddies face charges"),
            DiscoverCard(Icons.adb, "Thaiger", "Bangkok, Thailand - 2/3/22 ",
                "Tangmo's cause of death revealed, 5 boat buddies face charges"),
          ],
        ),
      ),
    );
  }

  Card DiscoverCard(
      IconData iconData, String pembawa, String tempat, String judul) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Container(
        height: 210,
        width: 131,
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/foto3.png"), fit: BoxFit.cover)),
          ),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/262.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(255, 255, 255, 0.7), BlendMode.modulate),
            )),
          ),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/264.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(255, 255, 255, 0.7), BlendMode.modulate),
            )),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/263.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Color.fromRGBO(255, 255, 255, 0.7), BlendMode.modulate),
              ),
            ),
          ),
          Positioned(
            top: 25,
            child: Container(
              color: Color(0xFFFF93A3),
              height: 40,
              width: 7,
            ),
          ),
          Positioned(
            top: 105,
            left: 10,
            child: Container(
              height: 210,
              width: 121,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      pembawa,
                      style: const TextStyle(
                        fontSize: 9,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      tempat,
                      style: const TextStyle(
                        fontSize: 9,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      judul,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
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
