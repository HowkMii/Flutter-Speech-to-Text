import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 5000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SpeechScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.white],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter)),
            ),
            Positioned(
              bottom: 50.0,
              left: 50.0,
              right: 50.0,
              child: Column(
                children: <Widget>[
                  Text(
                    "from",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "HOWKMII",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
