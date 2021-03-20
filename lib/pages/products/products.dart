import 'package:flutter/material.dart';
import './details.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
        child: Column(
          children: [
            //Center(child: Text('Food', style: TextStyle(color: Colors.black, fontSize: 25.0))),
            Flexible(flex: 1, fit: FlexFit.loose, child: Container()),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  //height: MediaQuery.of(context).size.height - 185.0,
                  //height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                        //bottomLeft: Radius.circular(50.0),
                        //topRight: Radius.circular(50.0)
                        ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 0, top: 50, bottom: 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Healthy', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0)),
                        SizedBox(width: 10.0),
                        Text('Food', style: TextStyle(fontSize: 35.0)),
                      ],
                    ),
                  ),
                )),
            Flexible(
                flex: 4,
                fit: FlexFit.tight,
                child: Container(
                  //height: MediaQuery.of(context).size.height - 185.0,
                  //height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      //topRight: Radius.circular(50.0)
                    ),
                  ),
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 1.0),
                      shrinkWrap: true,
                      //physics: BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return _buildFoodItem('assets/helpers/food/plate1.png', 'Salmon bowl', '\$24.00');
                      }),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 2.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(heroTag: imgPath, foodName: foodName, foodPrice: price)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(tag: imgPath, child: Image(image: AssetImage(imgPath), fit: BoxFit.cover, height: 75.0, width: 75.0)),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(foodName, style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)), Text(price, style: TextStyle(fontSize: 15.0, color: Colors.grey))])
                ])),
                IconButton(icon: Icon(Icons.add), color: Colors.black, onPressed: () {})
              ],
            )));
  }
}
