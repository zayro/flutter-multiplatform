import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({Key key}) : super(key: key);

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
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.home,
                          color: Theme.of(context).primaryColor),
                      onPressed: () {}),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: () {}),
                  Spacer(),
                  IconButton(
                      icon: Icon(Icons.explore,
                          color: Theme.of(context).accentColor),
                      onPressed: () {}),
                  Spacer(),
                  IconButton(
                      icon: Icon(Icons.person_outline,
                          color: Theme.of(context).accentColor),
                      onPressed: () {}),
                ],
              ),
            )));
  }
}
