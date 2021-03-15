import 'package:app_zayro/pages/serviceProviders/widgets/specialOffers.dart';
import 'package:app_zayro/widgets/discount.dart';
import 'package:flutter/material.dart';

import '../../search/search.dart';

import 'package:app_zayro/pages/serviceProviders/widgets/categories.dart';
import 'package:app_zayro/widgets/banner.dart';

class bodyCustom extends StatelessWidget {
  const bodyCustom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> list = List.generate(10, (index) => "Text $index");

    return Container(
        child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 250.0,
              width: double.infinity,
              color: Colors.yellow[600],
            ),
            Positioned(
              bottom: 50.0,
              right: 100.0,
              child: Container(
                height: 400.0,
                width: 400.0,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(200.0), color: Colors.yellow[600].withOpacity(0.4)),
              ),
            ),
            Positioned(
              bottom: 100.0,
              left: 150.0,
              child: Container(height: 300.0, width: 300.0, decoration: BoxDecoration(borderRadius: BorderRadius.circular(150.0), color: Colors.yellow[400].withOpacity(0.5))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 15.0),
                    SizedBox(width: MediaQuery.of(context).size.width - 120.0),
                    SizedBox(height: 15.0),
                  ],
                ),
                SizedBox(height: 50.0),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Hello , Marlon',
                    style: TextStyle(fontFamily: 'Quicksand', fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'What do you want to buy?',
                    style: TextStyle(fontFamily: 'Quicksand', fontSize: 23.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(5.0),
                    child: TextField(
                        onTap: () {
                          //Navigator.of(context).pushNamed('/search');
                          showSearch(context: context, delegate: Search(list));
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.yellow[700], size: 30.0),
                            contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Quicksand'))),
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 2.0),
        Expanded(
          child: ListView(
            //scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            physics: ScrollPhysics(),
            children: [
              Categories(),
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Text(
                  'Offer & Disccount.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                ),
              ),
              //SizedBox(height: 10.0),
              CarouselPage(),
/*               Container(
                  //color: Colors.white,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network('assets/images/home/Banner_2.png'),
                  )), */
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Text(
                  'Our Clients.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                ),
              ),
              //OffersPage()
              SpecialOffers(),
            ],
          ),
        ),
      ],
    ));
  }
}
