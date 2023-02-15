import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:musical/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext Context) => getApplication(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 90, 14, 125),
            ),
          ),
          Center(
            child: Image(
              image: AssetImage(
                'images/5.png',
              ),
              width: 200,
            ),
          ),
// up is logo and animation
// coments

          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 500,
                    bottom: 0,
                  ),
                  child: Text(
                    'This application was created',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),

// creted text in splash screen
// creted text in splash screen
// creted text in splash screen

              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 0,
                ),
                child: Text(
                  'By',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
// creted text in splash screen
// creted text in splash screen
// creted text in splash screen
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 0,
                ),
                child: Text(
                  'Amir Khosrwiy',
                  style: TextStyle(
                    color: Color(0xff89C4E1),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),

// up is logo and animation
// coments

          Positioned(
            bottom: 20,
            child: Lottie.asset(
              'assets/animation/probar.json',
              width: 390,
            ),
          ),
        ],
      ),
    );
  }
}
