import 'package:advance_text_field/advance_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../liprary/sa_animated_neumorphic_container.dart';
import '../model/bracketes_calculation.dart';
import '../sa_constants.dart';
import 'bracketssolve_screen.dart';

class Brackets extends StatefulWidget {
  const Brackets({Key key}) : super(key: key);

  @override
  _BracketsState createState() => _BracketsState();
}

bool _isActive = true;
bool _isActiveF = true;
bool _isWrites = true;
final _lightColor = _createLightColor();
final _darkColor = _createDarkColor();
double Qu;
double Nu;
double a;
double b;
double t;
double z;
double i;
double Fcu;
double Fy;

// BracketsCalculation _bracketsCalculation;

class _BracketsState extends State<Brackets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: sAColor1,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                color: sAColor4,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                        // color: sAColor4,
                        image: DecorationImage(
                            image: AssetImage("assets/home/Asset 1@4x.png"),
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                // color: sAColor1,
                decoration: BoxDecoration(color: sAColor1, boxShadow: [
                  BoxShadow(
                      color: _darkColor,
                      offset: Offset(0, 0),
                      blurRadius: 4.0,
                      spreadRadius: 5)
                ]),

                child: Column(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: TextFormField(
                    //     onTap: () {
                    //       setState(() {
                    //         _isWrites = !_isWrites;
                    //       });
                    //     },
                    //     initialValue: 'Input text' ,
                    //     cursorColor: Colors.black,
                    //     decoration: new InputDecoration(
                    //         labelText: _isWrites ? 'Hint here' : '',
                    //         border: OutlineInputBorder(),
                    //         // focusedBorder: InputBorder.none,
                    //         enabledBorder: InputBorder.none,
                    //         errorBorder: InputBorder.none,
                    //         disabledBorder: InputBorder.none,
                    //         contentPadding: EdgeInsets.only(
                    //             left: 15, bottom: 11, top: 11, right: 15),
                    //         hintText: "Hint here"),
                    //   ),
                    // ),
                    // TextFormField(
                    //   initialValue: 'Input text',
                    //   decoration: InputDecoration(
                    //     labelText: 'Label text',
                    //     errorText: 'Error message',
                    //     border: OutlineInputBorder(),
                    //     suffixIcon: Icon(
                    //       Icons.error,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Column(
                      children: [
                        AdvanceTextField(
                          keyboardType: TextInputType.number,
                          type: AdvanceTextFieldType.SAVE,
                          backgroundColor: _darkColor,
                          height: 40.0,
                          animationDuration: Duration(milliseconds: 200),
                          editLabel: Icon(
                            Icons.edit,
                            color: sAColor3,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: sAColor3,
                          ),
                          textHint: 'Qu (kn)',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            Qu = double.parse(text);
                            print("$text");
                          },
                        ),
                        AdvanceTextField(
                          keyboardType: TextInputType.number,
                          type: AdvanceTextFieldType.SAVE,
                          backgroundColor: _darkColor,
                          height: 40.0,
                          animationDuration: Duration(milliseconds: 200),
                          editLabel: Icon(
                            Icons.edit,
                            color: sAColor3,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: sAColor3,
                          ),
                          textHint: 'Nu (kn)',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            Nu = double.parse(text);
                            print("$text");
                          },
                        ),
                        AdvanceTextField(
                          keyboardType: TextInputType.number,
                          type: AdvanceTextFieldType.SAVE,
                          backgroundColor: _darkColor,
                          height: 40.0,
                          animationDuration: Duration(milliseconds: 200),
                          editLabel: Icon(
                            Icons.edit,
                            color: sAColor3,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: sAColor3,
                          ),
                          textHint: 'a (mm)',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            a = double.parse(text);
                            print("$text");
                          },
                        ),
                        AdvanceTextField(
                          keyboardType: TextInputType.number,
                          type: AdvanceTextFieldType.SAVE,
                          backgroundColor: _darkColor,
                          height: 40.0,
                          animationDuration: Duration(milliseconds: 200),
                          editLabel: Icon(
                            Icons.edit,
                            color: sAColor3,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: sAColor3,
                          ),
                          textHint: 'b (mm)',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            b = double.parse(text);
                            print("$text");
                          },
                        ),
                        AdvanceTextField(
                          keyboardType: TextInputType.number,
                          type: AdvanceTextFieldType.SAVE,
                          backgroundColor: _darkColor,
                          height: 40.0,
                          animationDuration: Duration(milliseconds: 200),
                          editLabel: Icon(
                            Icons.edit,
                            color: sAColor3,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: sAColor3,
                          ),
                          textHint: 't (mm)',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            t = double.parse(text);
                            print("$text");
                          },
                        ),
                        AdvanceTextField(
                          keyboardType: TextInputType.number,
                          type: AdvanceTextFieldType.SAVE,
                          backgroundColor: _darkColor,
                          height: 40.0,
                          animationDuration: Duration(milliseconds: 200),
                          editLabel: Icon(
                            Icons.edit,
                            color: sAColor3,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: sAColor3,
                          ),
                          textHint: 'z (mm)',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            z = double.parse(text);
                            print("$text");
                          },
                        ),
                        AdvanceTextField(
                          keyboardType: TextInputType.number,
                          type: AdvanceTextFieldType.SAVE,
                          backgroundColor: _darkColor,
                          height: 40.0,
                          animationDuration: Duration(milliseconds: 200),
                          editLabel: Icon(
                            Icons.edit,
                            color: sAColor3,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: sAColor3,
                          ),
                          textHint: 'i (mm)',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            i = double.parse(text);
                            print("$text");
                          },
                        ),
                        AdvanceTextField(
                          keyboardType: TextInputType.number,
                          type: AdvanceTextFieldType.SAVE,
                          backgroundColor: _darkColor,
                          height: 40.0,
                          animationDuration: Duration(milliseconds: 200),
                          editLabel: Icon(
                            Icons.edit,
                            color: sAColor3,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: sAColor3,
                          ),
                          textHint: 'Fcu (mPa)',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            Fcu = double.parse(text);
                            print("$text");
                          },
                        ),
                        AdvanceTextField(
                          keyboardType: TextInputType.number,
                          type: AdvanceTextFieldType.SAVE,
                          backgroundColor: _darkColor,
                          height: 40.0,
                          animationDuration: Duration(milliseconds: 200),
                          editLabel: Icon(
                            Icons.edit,
                            color: sAColor3,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: sAColor3,
                          ),
                          textHint: 'Fy (mPa)',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            Fy = double.parse(text);
                            print("$text");
                          },
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isActive = !_isActive;
                                  Future.delayed(
                                      const Duration(milliseconds: 300), () {
                                    setState(() {
                                      _isActive = !_isActive;
                                    });
                                  });
                                  Future.delayed(
                                      const Duration(milliseconds: 500), () {
                                    _isWrites = !_isWrites;
                                    Navigator.of(context).pop();
                                  });
                                });
                              },
                              child: SAAnimatedNeumorphicContainer(
                                depth: _isActive ? 0.0 : 0.4,
                                color: sAColor1,
                                width: 180,
                                height: 50,
                                radius: 80,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        "Back",
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ],
                                  ),
                                ),
                                // child: ,
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isActiveF = !_isActiveF;
                                  Future.delayed(
                                      const Duration(milliseconds: 300), () {
                                    setState(() {
                                      _isActiveF = !_isActiveF;
                                    });
                                  });
                                  Future.delayed(
                                      const Duration(milliseconds: 500), () {
                                    if (Qu != '' ||
                                        a != '' ||
                                        b != '' ||
                                        Fcu != '' ||
                                        Fy != '' ||
                                        i != '' ||
                                        Nu != '' ||
                                        t != '' ||
                                        z != '') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BracketesSolve(
                                                  Qu: Qu,
                                                  a: a,
                                                  b: b,
                                                  Fcu: Fcu,
                                                  Fy: Fy,
                                                  i: i,
                                                  Nu: Nu,
                                                  t: t,
                                                  z: z,
                                                )),
                                      );
                                    }
                                  });
                                });
                              },
                              child: SAAnimatedNeumorphicContainer(
                                depth: _isActiveF ? 0.0 : 0.4,
                                color: sAColor1,
                                width: 180,
                                height: 50,
                                radius: 80,
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Solve",
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Icon(Icons.arrow_forward),
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
                    Text(''),
                    SizedBox(
                      height: 42.0,
                    ),
                  ],
                ),
              ),

              // SizedBox(
              //   height: 16.0,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

Color _createLightColor() {
  final hsv = HSVColor.fromColor(sAColor1);
  final newValue = (hsv.value + 0.2).clamp(0, 1.0);
  return hsv.withValue(newValue).toColor();
}

Color _createDarkColor() {
  final hsv = HSVColor.fromColor(sAColor1).withAlpha(0.4);
  final newValue = (hsv.value - 0.2).clamp(0, 1.0);
  return hsv.withValue(newValue).toColor();
}
