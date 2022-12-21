import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gazelle_flutter/Files.dart';
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
      height: 80,
      width: size.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: Row(children: [
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  kLongLeft,
                  color: kGreen,
                  height: 30,
                  width: 30,
                )),
            Container(width: size.width / 5)
          ]),
        ),
        const Text(
          'Progress Bar',
          style: TextStyle(color: kDarkGreen, fontFamily: kFont, fontSize: 20),
        ),
        const Spacer(),
      ]),
    );
  }
}
