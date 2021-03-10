import 'package:flutter/material.dart';

import '../pages/home/home.dart';
import '../pages/products/details.dart';
import '../pages/login/login.dart';
import '../pages/login/signup.dart';
import '../pages/splash/splash.dart';
import '../pages/profile/profile.dart';
import '../pages/products/products.dart';

Map<String, WidgetBuilder> rootPath() {
  return <String, WidgetBuilder>{
    "/home": (BuildContext context) => MyHomePage(),
    "/details": (BuildContext context) => DetailsPage(),
    "/login": (BuildContext context) => LoginPage(),
    '/signup': (BuildContext context) => SignupPage(),
    '/splash': (BuildContext context) => SplashPage(),
    '/profile': (BuildContext context) => ProfilePage(),
    '/product': (BuildContext context) => ProductPage(),
  };
}
