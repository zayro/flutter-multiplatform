import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({Key key}) : super(key: key);

  @override
  _BottomNavigationBarCustomState createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomAppBar(
            //shape: CircularNotchedRectangle(),
            elevation: 4.0,
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      icon: Icon(Icons.home,
                          color: Theme.of(context).primaryColor),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.explore,
                          color: Theme.of(context).accentColor),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.person_outline,
                          color: Theme.of(context).accentColor),
                      onPressed: () {}),
                ],
              ),
            )));
  }
}
