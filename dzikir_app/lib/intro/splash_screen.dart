import 'file:///D:/FlutterProjects/dzikir_app/lib/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 300,
            width: 300,
          child: Image.asset('assets/img/main_icon.img')),
      ),
    );
  }

  splashScreen() async {
    var duration = Duration(seconds: 3);
    return Timer(duration,(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
        return HomeScreen();

      }));
    });
  }
}
