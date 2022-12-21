import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gazelle_flutter/Files.dart';
import 'package:gazelle_flutter/components/grass_input.dart';

FileStorage fs = FileStorage();
Future<Report> setReport() async {
  if (await fs.fileExists('temp')) {
    dynamic data = jsonDecode(await fs.readFile('temp'));
    Report item = Report.fromJson(data);
    return item;
  } else {
    return Report('', [], 0, 0, 0, 0, 0, 0, List.filled(3, Tree(0, 0, 0)));
  }
}

class InputScreen extends StatelessWidget {
  InputScreen({Key? key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: setReport(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          Report report = snapshot.data as Report;
          return Grass_Input(report: report);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const CircularProgressIndicator();
      }),
    );
  }
}
