import 'dart:convert';

import 'package:app_zayro/models/services.dart';
import 'package:app_zayro/services/providers/ProviderSearch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Search extends SearchDelegate {
  List<String> listExample;
  BuildContext contexto;
  final instanceData = new Data();

  //constructor of class
  Search(List<String> listExample, contexto) {
    this.listExample = listExample;
    this.contexto = contexto;

    instanceData.loadFaker();
  }

  List<String> recentList = [];
  Data selectedResult;

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        //Navigator.pop(context);
        Navigator.of(context).pushNamed('/home');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
          child: Column(
            children: [
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    //height: MediaQuery.of(context).size.height - 185.0,
                    //height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 0, top: 50, bottom: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(selectedResult.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0)),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                  )),
              Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Container(
                    //height: MediaQuery.of(context).size.height - 185.0,
                    //height: MediaQuery.of(context).size.height * 0.7,
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    decoration: BoxDecoration(
                      //color: Colors.grey[100],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                    ),
                    child: Column(
                      children: [
                        Card(
                          child: ListTile(
                            title: Text(selectedResult.name),
                            subtitle: Text(selectedResult.company + ' ' + selectedResult.adress),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List suggestionList = [];

    final providers = Provider.of<ProviderSearch>(contexto);

    //providers.search = query;

    //print(json.encode(instanceData.result));

    query.isEmpty
        ? suggestionList = recentList
        : suggestionList.addAll(instanceData.result.where(
            (element) => element.name.contains(query),
          ));

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
          leading: query.isEmpty ? Icon(Icons.access_time) : SizedBox(),
          title: Text(suggestionList[index].name),
          subtitle: Text(suggestionList[index].company + ' ' + suggestionList[index].adress),
          trailing: Icon(Icons.more_vert),
          onTap: () {
            selectedResult = suggestionList[index];
            providers.search = suggestionList[index].name;
            showResults(context);
            print(json.encode(suggestionList[index]));
          },
        ));
      },
    );
  }
}
