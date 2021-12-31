import 'dart:math';

import 'package:advance_text_field/advance_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import '../liprary/sa_animated_neumorphic_container.dart';
import '../sa_constants.dart';
import 'brackets_screen.dart';

class BracketesSolve extends StatefulWidget {
  final Qu;
  final Nu;
  final a;
  final b;
  final t;
  final z;
  final i;
  final Fcu;
  final Fy;

  const BracketesSolve(
      {Key key,
      @required this.Qu,
      this.Nu,
      this.a,
      this.b,
      this.t,
      this.z,
      this.i,
      this.Fcu,
      this.Fy})
      : super(key: key);

  @override
  _BracketesSolveState createState() => _BracketesSolveState();
}

final _lightColor = _createLightColor();
final _darkColor = _createDarkColor();
bool _isActive = true;
String currentFi = '10';

class _BracketesSolveState extends State<BracketesSolve> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: sAColor2,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 40.0,
                      color: Colors.black45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Choosing the diameter of the reinforcement:  ",
                            style: sALargeTitleStyle.copyWith(
                                color: sAColor3, fontSize: 16),
                          ),
                          buildDropdownFi(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: CalculationRow(
                  Var: 'As',
                  Calculation: CalculationAS(),
                  CalculationRi: CalculationAsRi(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: CalculationRow(
                  Var: 'AsH',
                  Calculation: CalculationAsH(),
                  CalculationRi: CalculationAsHRi(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: CalculationRow(
                  Var: 'AsV',
                  Calculation: CalculationAsV(),
                  CalculationRi: CalculationAsVRi(),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isActive = !_isActive;
                        Future.delayed(const Duration(milliseconds: 300), () {
                          setState(() {
                            _isActive = !_isActive;
                          });
                        });
                        Future.delayed(const Duration(milliseconds: 500), () {
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isActive = !_isActive;
                        Future.delayed(const Duration(milliseconds: 300), () {
                          setState(() {
                            _isActive = !_isActive;
                          });
                        });

                        // Share Function
                        print(smg());
                        _onShare(context);
                      });
                    },
                    child: SAAnimatedNeumorphicContainer(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      depth: _isActive ? 0.0 : 0.4,
                      color: sAColor1,
                      width: 180,
                      height: 50,
                      radius: 80,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Share",
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
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              )
            ],
          ),
        ),
      ),
    ));
  }

  DropdownButton<String> buildDropdownFi() {
    return DropdownButton<String>(
      iconEnabledColor: sAColor3,
      focusColor: sAColor3,
      dropdownColor: sAColor1,
      iconDisabledColor: sAColor3,
      borderRadius: BorderRadius.circular(10.0),
      enableFeedback: true,
      autofocus: false,
      isDense: true,
      value: currentFi,
      icon: Icon(Icons.arrow_downward,color: sAColor3,),
      elevation: 16,
      style: const TextStyle(color: Colors.white),
      underline: Container(
        height: 2,
      ),
      onChanged: (String newValue) {
        setState(() {
          currentFi = newValue;
        });
      },
      items: <String>['10', '12', '16', '18']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class CalculationRow extends StatelessWidget {
  CalculationRow(
      {Key key,
      @required this.Var,
      @required this.Calculation,
      @required this.CalculationRi})
      : super(key: key);

  String Var;
  double Calculation;
  double CalculationRi;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SAAnimatedNeumorphicContainer(
          depth: _isActive ? 0.0 : 0.4,
          color: sAColor1,
          width: 50,
          height: 50,
          radius: 80,
          child: Center(
            child: Text(
              Var,
              style: sALargeTitleStyle.copyWith(color: sAColor3, fontSize: 16),
            ),
          ),
          // child: ,
        ),
        SizedBox(
          height: 22.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SAAnimatedNeumorphicContainer(
              depth: _isActive ? 0.0 : 0.4,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              color: sAColor1,
              width: MediaQuery.of(context).size.width * 0.5,
              height: 50,
              radius: 80,
              child: Center(
                child: Text(
                  Calculation.toStringAsFixed(2),
                  style: sALargeTitleStyle.apply(color: sAColor3),
                ),
              ),
              // child: ,
            ),
            SAAnimatedNeumorphicContainer(
              depth: _isActive ? 0.0 : 0.4,
              color: sAColor1,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              width: 50,
              height: 50,
              radius: 80,
              child: mm2(),
              // child: ,
            ),
          ],
        ),
        SizedBox(
          height: 22.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SAAnimatedNeumorphicContainer(
              depth: _isActive ? 0.0 : 0.4,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              color: sAColor1,
              width: MediaQuery.of(context).size.width * 0.5,
              height: 50,
              radius: 80,
              child: Center(
                child: Text(
                  CalculationRi.ceil().toString(),
                  style: sALargeTitleStyle.apply(color: sAColor3),
                ),
              ),
              // child: ,
            ),
            SAAnimatedNeumorphicContainer(
              depth: _isActive ? 0.0 : 0.4,
              color: sAColor1,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              width: 50,
              height: 50,
              radius: 80,
              child: fi(),
              // child: ,
            ),
          ],
        )
      ],
    );
  }
}

class mm2 extends StatelessWidget {
  const mm2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "mm",
              style: sALargeTitleStyle.copyWith(color: sAColor3, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, top: 4.0),
            child: Text(
              "2",
              style: sALargeTitleStyle.copyWith(color: sAColor3, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}

class fi extends StatelessWidget {
  const fi({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              "⌀",
              style: sALargeTitleStyle.copyWith(color: sAColor3, fontSize: 32),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, top: 8.0, right: 4.0),
            child: Text(
              currentFi,
              style: sALargeTitleStyle.copyWith(color: sAColor3, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}

smg() {
  var AS = CalculationAS().toStringAsFixed(2);
  var AH = CalculationAsH().toStringAsFixed(2);
  var AV = CalculationAsV().toStringAsFixed(2);
  var RAS = CalculationAsRi().ceil().toString();
  var RAH = CalculationAsHRi().ceil().toString();
  var RAV = CalculationAsVRi().ceil().toString();
  String msg = '''
Qu=  $Qu,
a=  $a,
b=  $b,  
Fcu=  $Fcu,
Fy=  $Fy,
i=  $i,
Nu=  $Nu,
t=  $t,
z=  $z,  

SOLVE>>>

As=  $AS  mm^2 >>  $RAS fi$currentFi
AsH= $AH  mm^2 >>  $RAH fi$currentFi
AsV= $AV  mm^2 >>  $RAV fi$currentFi
''';

  return msg;
}

_onShare(BuildContext context) async {
  final RenderBox box = context.findRenderObject() as RenderBox;

  Share.share(smg(),
      subject: "SConcrete",
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);

// _onShareWithEmptyOrigin(BuildContext context) async {
//   await Share.share("text");
// }
}

CalculationD() {
  double d = t - 50;
  return d;
}

CalculationAsf() {
  double Asf =
      (Qu * pow(10, 3) / (1.2 * (Fy / 1.15))) + (Nu * pow(10, 3) / (Fy / 1.15));
  return Asf;
}

CalculationMu() {
  double Mu = Qu * (a / 1000) + Nu * (0.05 + (i / 100));
  return Mu;
}

CalculationAf() {
  double Af = (CalculationMu() * pow(10, 6)) / (0.8 * Fy * CalculationD());
  return Af;
}

CalculationAn() {
  double An = (Nu * pow(10, 3)) / (Fy / 1.15);
  return An;
}

CalculationAS() {
  double AnAf = CalculationAn() + CalculationAf();
  double AnAsf = CalculationAn() + (2 / 3) * CalculationAsf();
  double A003 = 0.03 * (Fcu / Fy) * b * CalculationD();

  return [AnAf, AnAsf, A003].reduce(max);
}

CalculationAsH() {
  double AsH = 0.5 * (CalculationAS() - CalculationAn());
  return AsH;
}

CalculationAsV() {
  // AsV * S   => 80 ~ 200
  double AsV = (0.4 / Fy) * b * 200;
  return AsV;
}

CalculationAsRi() {
  double AsRi = CalculationAS() / (pi * pow(int.parse(currentFi), 2));
  return AsRi;
}

CalculationAsVRi() {
  double AsRi = CalculationAsV() / (pi * pow(int.parse(currentFi), 2));
  return AsRi;
}

CalculationAsHRi() {
  double AsRi = CalculationAsH() / (pi * pow(int.parse(currentFi), 2));
  return AsRi;
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
