import 'package:flutter/material.dart';
import 'package:gazelle_flutter/components/FileBody.dart';
import 'package:path_provider/path_provider.dart';

class FileWriter extends StatelessWidget {
  FileWriter({Key? key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder(
          future: getApplicationDocumentsDirectory(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            print(snapshot.data);
            return Container();
          }),
    );
  }
}
