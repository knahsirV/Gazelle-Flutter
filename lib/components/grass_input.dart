import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:gazelle_flutter/Files.dart';
import 'package:gazelle_flutter/components/progressbar.dart';
import 'package:gazelle_flutter/constants.dart';
import 'package:gazelle_flutter/components/tree_input.dart';

FileStorage fs = FileStorage();

class Grass_Input extends StatefulWidget {
  Grass_Input({Key? key, required this.report});
  Report report;
  @override
  State<Grass_Input> createState() => _Grass_Input(report: report);
}

class _Grass_Input extends State<Grass_Input> {
  _Grass_Input({Key? key, required this.report});
  Report report;
  var section1 = TextEditingController();
  var section2 = TextEditingController();
  var section3 = TextEditingController();
  var section4 = TextEditingController();
  List<dynamic> Grass = <dynamic>[];
  void initState() {
    super.initState();
    setState(() {
      section1.text = report.gweight[0];
      section2.text = report.gweight[1];
      section3.text = report.gweight[2];
      section4.text = report.gweight[3];
    });
  }

  void FileUpdate() async {
    Grass = [section1.text, section2.text, section3.text, section4.text];
    setState(() {
      report.gweight = Grass;
    });

    await fs.writeFile(report, 'temp');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: ProgressBar(),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          textField(
              controller: section1,
              type: 'Grass weight zone 1',
              update: () {
                FileUpdate();
              }),
          textField(
              controller: section2,
              type: 'Grass weight zone 2',
              update: () {
                FileUpdate();
              }),
          textField(
              controller: section3,
              type: 'Grass weight zone 3',
              update: () {
                FileUpdate();
              }),
          textField(
              controller: section4,
              type: 'Grass weight zone 4',
              update: () {
                FileUpdate();
              }),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tree_Input(report: report),
                  ));
            },
            child: Container(
                color: kGreen,
                height: 50,
                width: 200,
                child: const Center(
                    child: Text(
                  'Next',
                  style: TextStyle(fontSize: 20, fontFamily: kFont),
                ))),
          )
        ]),
      ),
    );
  }
}

class textField extends StatelessWidget {
  textField(
      {Key? key,
      required this.controller,
      required this.type,
      required this.update})
      : super(key: key);
  TextEditingController controller;
  void Function() update;
  final String type;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Container(
              height: 50,
              width: size.width - 80,
              decoration: BoxDecoration(
                  color: kLightGreen.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: kDarkGreen, width: 2)),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 13),
                child: TextField(
                    onChanged: (text) => {update()},
                    keyboardType: TextInputType.number,
                    controller: controller,
                    style: const TextStyle(
                      color: kGreen,
                      fontSize: 20,
                      fontFamily: kFont,
                    ),
                    decoration: InputDecoration(
                      hintText: type,
                      border: InputBorder.none,
                      hintStyle: const TextStyle(
                          fontSize: 16, fontFamily: kFont, color: kGreen),
                    )),
              ))),
        ));
  }
}
