import 'package:flutter/material.dart';
// Handler State
import 'package:provider/provider.dart';

//Routes
import 'routes/index.dart';

//Provider State
import './services/providers/index.dart';

//Constant
import './config/utils/constants.dart';

//Store Data
/*
import './services/shared_preferences/index.dart';
final store = new SharedPref();

final Map info = {"name": "Marlon"};

store.save("author", info);
*/

void main() async {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderSearch()),
        ChangeNotifierProvider(create: (_) => ProviderHome()),
        /*  ChangeNotifierProvider.value(
          value: ProviderClient(),
        ), */
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        theme: ThemeData(
          // This is the theme of your application.
          //
          brightness: Brightness.light,
          primaryColor: kPrimaryColors,
          accentColor: kPrimaryColorsAccent,
          buttonColor: Colors.deepOrange,
          appBarTheme: AppBarTheme(
            backgroundColor: kPrimaryColors,
            elevation: 0.1,
          ),
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
/*         darkTheme: ThemeData(
          brightness: Brightness.dark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ), */
        //home: MyHomePage(title: 'Flutter Demo Home Page'),
        initialRoute: "/login",
        routes: rootPath(),
      )));
}
