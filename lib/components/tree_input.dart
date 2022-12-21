import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gazelle_flutter/Files.dart';
import 'package:gazelle_flutter/components/progressbar.dart';
import 'package:gazelle_flutter/constants.dart';

class Tree_Input extends StatefulWidget {
  Tree_Input({Key? key, required this.report});
  Report report;
  @override
  State<Tree_Input> createState() => _Tree_Input(report: report);
}

class _Tree_Input extends State<Tree_Input> {
  _Tree_Input({Key? key, required this.report});
  Report report;
  var section1 = TextEditingController();
  var section2 = TextEditingController();
  var section3 = TextEditingController();
  var measurements = [];
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
          textField(controller: section1, type: 'Enter HT'),
          textField(controller: section2, type: 'Enter HI'),
          textField(controller: section3, type: 'Enter R'),
          GestureDetector(
            onTap: () {},
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
  textField({
    Key? key,
    required this.controller,
    required this.type,
  }) : super(key: key);
  TextEditingController controller;
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
