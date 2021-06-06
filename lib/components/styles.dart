import 'dart:ui';

import 'package:flutter/material.dart';

const kOnlineColor = Color(0xFF2cbe3a);
const kMainColor = Color(0xFF5f63f2);
const kPrimaryColor = Color(0xFFFFFFFF);
const kOrderCardColor1 = Color(0xff999999);
const kOrderCardHeadingColor = Color(0xff333333);
const kDrawerColor = Color(0xFF5f63f2);
final kAppBarTitleTextStyle = TextStyle(
    color: Color(0xFF5c5e61), fontSize: 18.0, fontWeight: FontWeight.bold);
final kOrderCardTitleStyle = TextStyle(
    color: kOrderCardHeadingColor, fontSize: 18.0, fontWeight: FontWeight.bold);
final kOrderCardSubtitleStyle =
    TextStyle(color: kOrderCardColor1, fontSize: 12.0);
final kOrderLatLineStyle = TextStyle(color: kMainColor, fontSize: 12.0);
final kSecondSubtitleStyle = TextStyle(
  color: kOrderCardHeadingColor,
  fontSize: 16.0,
);
final kTextFieldStyle =
    TextStyle(color: kMainColor, fontSize: 18.0, fontWeight: FontWeight.bold);
final kButtonStyle =
    ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(kMainColor));
final kButtonStyle1 = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor));
