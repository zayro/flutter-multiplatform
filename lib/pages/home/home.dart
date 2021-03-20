import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

import 'components/drawer.dart';
import 'components/BottomNavigationBar.dart';
import 'components/appBar.dart';

// Provider
import 'package:app_zayro/services/providers/index.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    final providerSearch = Provider.of<ProviderSearch>(context);
    final providerHome = Provider.of<ProviderHome>(context);

    if (providerSearch.search.isNotEmpty) {
      print("provider is not empty ${providerSearch.search}");
    } else {
      print("provider is  empty ");
    }

    if (kIsWeb) {
      // running on the web!
      print("provider is  empty ");
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarCustom(context),
      body: providerHome.handlePageState(),
      drawer: DrawerCustom(),
      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }
}
