import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gazelle_flutter/components/progressbar.dart';
import 'package:gazelle_flutter/constants.dart';

class Grass_Input extends StatefulWidget {
  Grass_Input({Key? key});
  @override
  State<Grass_Input> createState() => _Grass_Input();
}

class _Grass_Input extends State<Grass_Input> {
  _Grass_Input({Key? key});
  var section1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: ProgressBar(),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          textField(controller: section1, type: 'Grass weight zone 1')
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
      child: Container(
          height: 58,
          width: size.width - 60,
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
                  color: kWhite,
                  fontSize: 20,
                  fontFamily: kFont,
                ),
                decoration: InputDecoration(
                  hintText: type,
                  border: InputBorder.none,
                  hintStyle: const TextStyle(
                      fontSize: 16, fontFamily: kFont, color: kGrey),
                )),
          ))),
    );
  }
}
