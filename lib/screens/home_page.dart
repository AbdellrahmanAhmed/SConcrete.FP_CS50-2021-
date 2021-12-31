import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../liprary/sa_animated_neumorphic_container.dart';
import '../sa_constants.dart';
import 'brackets_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isActive = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE8EDDF),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isActive = !_isActive;
                    Future.delayed(const Duration(milliseconds: 300), () {
                      setState(() {
                        _isActive = !_isActive;
                      });
                    });
                    Future.delayed(const Duration(milliseconds: 600), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Brackets()),
                      );
                    });
                  });
                },
                child: SAAnimatedNeumorphicContainer(
                  depth: _isActive ? 0.0 : 0.4,
                  color: Color(0xFFF2F2F2),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.8,
                  radius: 80,
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 80.0, top: 24.0, bottom: 24.0),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/home/Asset 3@4x.png"),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 250.0, left: 110.0),
                          child: Text(
                            "Brackets",
                            style: sALargeTitleStyle.copyWith(
                                color: sAColor2, fontSize: 50),
                          ),
                        )
                      ],
                    ),
                  ),
                  // child: ,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
