import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE8EDDF),
        body: Center(
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/splashscreen/Splach.png"),
                      fit: BoxFit.cover)),
            ),
            // SpinKitSpinningLines(
            //   size: 50,
            //   color: Colors.deepPurple,
            //   itemCount: 6,
            //   lineWidth: 5,
            //   duration: Duration(seconds: 2),
            // ),
          ]),
        ),
      ),
    );
  }
}
