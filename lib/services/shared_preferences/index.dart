import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPreferences prefs;

  read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getString(key));
  }

  save(String key, Map value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value));
  }

  remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}

addStringToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('stringValue', "abc");
}

addIntToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('intValue', 123);
}

addDoubleToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setDouble('doubleValue', 115.0);
}

ddBoolToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('boolValue', true);
}

getStringValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  String stringValue = prefs.getString('stringValue');
  return stringValue;
}

getBoolValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return bool
  bool boolValue = prefs.getBool('boolValue');
  return boolValue;
}

getIntValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return int
  int intValue = prefs.getInt('intValue');
  return intValue;
}

getDoubleValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return double
  double doubleValue = prefs.getDouble('doubleValue');
  return doubleValue;
}

removeValues() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Remove String
  prefs.remove("stringValue");
  //Remove bool
  prefs.remove("boolValue");
  //Remove int
  prefs.remove("intValue");
  //Remove double
  prefs.remove("doubleValue");
}


/**
 * 
  loadSharedPrefs() async {
    try {
      User user = User.fromJson(await sharedPref.read("user"));
      Scaffold.of(context).showSnackBar(SnackBar(
          content: new Text("Loaded!"),
          duration: const Duration(milliseconds: 500)));
      setState(() {
        userLoad = user;
      });
    } catch (Excepetion) {
      Scaffold.of(context).showSnackBar(SnackBar(
          content: new Text("Nothing found!"),
          duration: const Duration(milliseconds: 500)));
    }
  }


// https://betterprogramming.pub/flutter-how-to-save-objects-in-sharedpreferences-b7880d0ee2e4
 */