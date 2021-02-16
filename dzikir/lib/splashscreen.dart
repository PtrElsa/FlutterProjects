import 'dart:async';

import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }
  splashScreenStart() async {
    var duration = Duration(seconds: 3);
    return Timer(duration,(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
        return HomePage();

      }));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/img/splashscreen.png", height: 250.0 ,width: 250.0,
            ),
          ],
        ),
      ),
    );
  }
}

