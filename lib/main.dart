import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:musical/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// class Application extends StatelessWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return getApplication();
//   }
// }

Widget getApplication() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 90, 14, 125),
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            color: Color(0xff9772FB),
            image: DecorationImage(
              image: AssetImage('images/2.png'),
              fit: BoxFit.fitWidth,
              opacity: (0.8),
            ),
          ),
          child: getBody(),
        ),
      ),
    ),
  );
}

Widget getBody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('c1.wav');
                },
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 100.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('c2.wav');
                },
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 100.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('h1.wav');
                },
                child: Text(
                  '3',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 100.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('h2.wav');
                },
                child: Text(
                  '4',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 100.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('k1.wav');
                },
                child: Text(
                  '5',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 100.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('k2.wav');
                },
                child: Text(
                  '6',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 100.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('o2.wav');
                },
                child: Text(
                  '7',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 100.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('o1.wav');
                },
                child: Text(
                  '8',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 100.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // ElevatedButton(
      //   onPressed: () {
      //     Navigator.push(context,
      //     Builder.build(_) => SecondScreen(),),
      //   },
      //   child: Text('hello'),
      // ),
    ],
  );
}

playSound(String sound) {
  var player = AudioCache();
  player.play(sound);
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
