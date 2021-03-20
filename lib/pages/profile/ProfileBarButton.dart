import 'package:flutter/material.dart';

import 'components/body.dart';

class ProfilePageBarButton extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Body());
  }
}
