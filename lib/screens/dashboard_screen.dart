import 'package:flutter/material.dart';
import 'package:gazelle_flutter/components/dashboard_body.dart';
import 'package:gazelle_flutter/constants.dart';

class DashScreen extends StatelessWidget {
  DashScreen({Key? key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
              height: 100,
              child: const Center(
                  child: Text(
                'Gazelle Dashboard',
                style: TextStyle(
                    fontFamily: kFont,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: kDarkGreen),
              ))),
        ),
        body: DashBody());
  }
}
