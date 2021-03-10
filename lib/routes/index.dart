import 'package:flutter/material.dart';

import '../pages/details/detalle.widget.dart';
import '../pages/home/home.widget.dart';
import '../pages/home/home.dart';
import '../pages/products/details.dart';
import '../pages/login/login.dart';
import '../pages/login/signup.dart';
import '../pages/search/search.dart';

Map<String, WidgetBuilder> rootPath() {
  return <String, WidgetBuilder>{
    "/home": (BuildContext context) => MyHomePage(),
    "/detail": (BuildContext context) => DetailProductPage(),
    "/details": (BuildContext context) => DetailsPage(),
    "/login": (BuildContext context) => LoginPage(),
    '/signup': (BuildContext context) => SignupPage(),
    '/search': (BuildContext context) => SearchPage()
  };
}
