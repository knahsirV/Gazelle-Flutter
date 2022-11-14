import 'package:flutter/material.dart';
import 'package:gazelle_flutter/constants.dart';

class ProgressBar extends StatefulWidget {
  ProgressBar({Key? key});
  @override
  State<ProgressBar> createState() => _ProgressBar();
}

class _ProgressBar extends State<ProgressBar> {
  _ProgressBar({Key? key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size.width,
      child: Text(
        'Progress Bar',
        style: TextStyle(color: kDarkGreen, fontFamily: kFont, fontSize: 20),
      ),
    );
  }
}
