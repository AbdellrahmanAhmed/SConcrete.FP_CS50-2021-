import 'dart:async';
import 'dart:io';

import 'package:advance_text_field/advance_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';




// Colors
const sABackgroundColor = Color(0xFF343477);
const sASecondarBackgroundColor = Color(0xFF4A47F5);
const sASidebarBackgroundColor = Color(0xFFF1F4FB);
const sACardPopupBackgroundColor = Color(0xFFF5F8FF);
const sAPrimaryLabelColor = Color(0xFF7C9F36);
const sASecondaryLabelColor = Color(0xFF661141);
const sAShadowColor = Color.fromRGBO(72, 76, 82, 0.1607843137254902);
const sACourseElementIconColor = Color(0xFF17294D);


const sAColor1 = Color(0xff333533);
const sAColor2 = Color(0xff242423);
const sAColor3 = Color(0xfff5cb5c);
const sAColor4 = Color(0xffe8eddf);
const sAColor5 = Color(0xffcfdbd5);




List<BoxShadow> shadow = [
  const BoxShadow(
      color: sAShadowColor,
      offset: Offset(0, 0),
      blurRadius: 4.0,
      spreadRadius: 5)
];





// Text Styles
var sALargeTitleStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: sABackgroundColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var sATitle1Style = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: sAPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
  shadows: shadow,
);
var sACardTitleStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: 22.0,
  decoration: TextDecoration.none,
);
var sATitle2Style = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: sAPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var sAHeadlineLabelStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w800,
  color: sAPrimaryLabelColor,
  fontFamily: 'SF Pro Text',
  decoration: TextDecoration.none,
);
var sASubtitleStyle = TextStyle(
  fontSize: 16.0,
  color: sASecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var sABodyLabelStyle = TextStyle(
  fontSize: 16.0,
  color: Colors.black,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var sACalloutLabelStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w800,
  color: sAPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var sASecondaryCalloutLabelStyle = TextStyle(
  fontSize: 16.0,
  color: sASecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var sASearchPlaceholderStyle = TextStyle(
  fontSize: 13.0,
  color: sASecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var sASearchTextStyle = TextStyle(
  fontSize: 13.0,
  color: sAPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var sACardSubtitleStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  color: Color(0xE6FFFFFF),
  fontSize: 13.0,
  decoration: TextDecoration.none,
);
var sACaptionLabelStyle = TextStyle(
  fontSize: 12.0,
  color: sASecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var sALoginInputTextStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.black.withOpacity(0.3),
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);





//class


class sATextFiled extends StatelessWidget {

  final textHint;
  var Var;

   sATextFiled({
    Key key, this.textHint,this.Var
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdvanceTextField(
      type: AdvanceTextFieldType.SAVE,
      backgroundColor: sAColor1,
      height: 40.0,
      animationDuration: Duration(milliseconds:200),
      editLabel: Icon(
        Icons.edit,
        color: sAColor3,
      ),
      saveLabel: Icon(
        Icons.check,
        color: sAColor3,
      ),
      textHint: textHint?? 'أضف هينت في المعادلة الأب',
      onEditTap: () {},
      onSaveTap: (text) {
        Var = text;
        print("$text");
      },
    );
  }
}

