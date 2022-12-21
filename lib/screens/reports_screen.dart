import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gazelle_flutter/Files.dart';
import 'package:gazelle_flutter/components/reportsBody.dart';

FileStorage fs = FileStorage();
Future<Map<String, Report>> getReports() async {
  List<String> files = await fs.listFiles();
  Map<String, Report> reports = {};
  for (int i = 0; i < files.length; i++) {
    String direct = files[i];
    var fileName = direct.split('/').last;
    dynamic data = jsonDecode(await fs.readFile(fileName));
    reports[fileName] = Report.fromJson(data);
  }
  return reports;
}

class ReportsScreen extends StatelessWidget {
  ReportsScreen({Key? key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: FutureBuilder(
      future: getReports(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ReportsBody(reports: snapshot.data as Map<String, Report>);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    ));
  }
}
