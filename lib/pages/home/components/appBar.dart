import 'package:flutter/material.dart';

import '../../../config/utils/constants.dart';

AppBar AppBarCustom(BuildContext context) {
  return AppBar(
    //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    //backgroundColor: kPrimaryColor
    backgroundColor: Theme.of(context).primaryColor,
    //backgroundColor: Colors.transparent,
    toolbarOpacity: 0.5,
    elevation: 0.1,
/*         leading: IconButton(
      icon: Icon(Icons.menu),
      color: Theme.of(context).accentColor,
      onPressed: () => _scaffoldKey.currentState.openDrawer(),
    ), 
        title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Punk",
            style: TextStyle(color: Theme.of(context).primaryColor)),
        Text(
          "Food",
          style: TextStyle(color: Theme.of(context).accentColor),
        )
      ],
    ), */
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.notifications_none, color: Theme.of(context).accentColor),
        onPressed: () {
          // do something
        },
      )
    ],
  );
}
