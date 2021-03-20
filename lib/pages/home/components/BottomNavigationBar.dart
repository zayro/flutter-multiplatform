import 'package:app_zayro/services/providers/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../config/utils/constants.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({Key key}) : super(key: key);

  @override
  _BottomNavigationBarCustomState createState() => _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final providers = Provider.of<ProviderHome>(context);

    var brightness = MediaQuery.of(context).platformBrightness;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        providers.pageCurrent = index;
        print("mensaje page current");
        print("page brightness $brightness");
        print(providers.pageCurrent);
      });
    }

    return Container(
        decoration: BoxDecoration(
          //color: Colors.grey[500],
          borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          boxShadow: [
            BoxShadow(color: bottomNavigationBarBoxShadow, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
          child: BottomNavigationBar(
            elevation: 2,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: bottomNavigationBarselectedItemColor,
            onTap: _onItemTapped,
            unselectedItemColor: Colors.grey[500],
          ),
        ));
  }
}
