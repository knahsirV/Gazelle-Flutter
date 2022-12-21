import 'package:flutter/material.dart';
import 'package:gazelle_flutter/Files.dart';
import 'package:gazelle_flutter/constants.dart';

class ReportsBody extends StatefulWidget {
  ReportsBody({Key? key, required this.reports});
  Map<String, Report> reports;
  @override
  State<ReportsBody> createState() => _ReportsBody(reports: reports);
}

class _ReportsBody extends State<ReportsBody> {
  _ReportsBody({Key? key, required this.reports});
  Map<String, Report> reports;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          for (var k in reports.keys)
            Container(
              height: 300,
              width: 300,
              color: kGreen,
              child: Center(child: Text(k)),
            )
        ],
      ),
    );
  }
}
