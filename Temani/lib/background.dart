import 'package:flutter/material.dart';

class BackgroundsApp extends StatelessWidget {
  const BackgroundsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: avoid_print

        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/BACKGROUND.png"),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
