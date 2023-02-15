import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:musical/main.dart';

void main() {
  runApp(SecondScreen());
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget getApplication2() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 90, 14, 125),
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            color: Color.fromARGB(255, 115, 165, 226),
            image: DecorationImage(
                image: AssetImage('images/2.png'), fit: BoxFit.fitWidth),
          ),
          child: getBody(),
        ),
      ),
    ),
  );
}
