import 'package:app_zayro/pages/serviceProviders/widgets/specialOffers.dart';
import 'package:app_zayro/widgets/discount.dart';
import 'package:flutter/material.dart';

import '../../search/search.dart';

import 'package:app_zayro/pages/serviceProviders/widgets/categories.dart';

import '../../../config/utils/constants.dart';

class bodyCustom extends StatelessWidget {
  const bodyCustom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> list = List.generate(10, (index) => "Text $index");

    return SafeArea(
      child: Container(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
                    ),
                    child: Container(
                      //padding: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
                      child: Column(children: [
                        Container(
                            child: Text(
                          'Hello , Marlon',
                          style: TextStyle(fontFamily: 'Quicksand', fontSize: 30.0, fontWeight: FontWeight.bold),
                        )),
                        SizedBox(height: 5.0),
                        Container(
                          child: Text(
                            'What do you want to buy?',
                            style: TextStyle(fontFamily: 'Quicksand', fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: Material(
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(10.0),
                            child: TextField(
                                onTap: () {
                                  showSearch(context: context, delegate: Search(list, context));
                                },
                                //style: TextStyle(height: 50),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.search, color: iconSearchColor, size: 30.0),
                                    contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                                    hintText: 'Search',
                                    hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Quicksand'))),
                          ),
                        ),
                      ]),
                    ),
                  ),
                )),
            Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Container(
                  child: Column(
                    children: [
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
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                              ),
                            ),
                            //SizedBox(height: 10.0),
                            CarouselPage(),
                            Container(
                              margin: EdgeInsets.all(10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Our Clients.',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                              ),
                            ),
                            //OffersPage(),
                            SpecialOffers(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
