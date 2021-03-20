import 'package:flutter/material.dart';
import 'size.dart';

// ******************
//  Colors
// ******************

// Asignment Color 0xFFF to Hexadecimal: 0xFF

// ******************
//  Colors: Home
// ******************

Color bottomNavigationBarselectedItemColor = Colors.yellow[600];
Color bottomNavigationBarBoxShadow = Colors.grey[200];
Color iconSearchColor = Colors.yellow[600];

//const kPrimaryColor = Color(0xFFFF7643);

Color kPrimaryColors = Colors.yellow;
Color kPrimaryColorsAccent = Colors.grey[600];

const kPrimaryColor = Color(0xFFfdd835);

const kPrimaryLightColor = Color(0xFFFFECDF);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// ******************
//  Forms
// ******************
final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

/// Decoradres
final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
