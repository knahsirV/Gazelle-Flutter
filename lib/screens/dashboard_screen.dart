import 'package:flutter/material.dart';
import 'package:gazelle_flutter/components/dashboard_body.dart';
import 'package:gazelle_flutter/components/navBar.dart';
import 'package:gazelle_flutter/constants.dart';

class DashScreen extends StatelessWidget {
  DashScreen({Key? key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar:
            PreferredSize(preferredSize: Size.fromHeight(270), child: navBar()),
        body: DashBody());
  }
}
