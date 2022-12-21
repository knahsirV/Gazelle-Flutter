import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gazelle_flutter/Files.dart';
import 'package:gazelle_flutter/constants.dart';
import 'package:gazelle_flutter/components/grass_input.dart';
import 'package:gazelle_flutter/screens/input_screen.dart';
import 'package:gazelle_flutter/screens/reports_screen.dart';

class cccBody extends StatefulWidget {
  cccBody({Key? key});
  @override
  State<cccBody> createState() => _cccBody();
}

class _cccBody extends State<cccBody> {
  _cccBody({Key? key});
  FileStorage fs = FileStorage();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 60),
          child: Container(
            width: 300,
            child: const Text(
              'Carrying Capacity Calculator',
              style:
                  TextStyle(color: kDarkGreen, fontSize: 30, fontFamily: kFont),
            ),
          ),
        ),
        Container(height: 50),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InputScreen()),
              );
            },
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(width: 6, color: kGreen),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    kCalculate,
                    height: 100,
                  ),
                  Container(width: 10),
                  const Text(
                    'Calculator',
                    style: TextStyle(
                        fontFamily: kFont, fontSize: 22, color: kGreen),
                  )
                ],
              ),
            )),
        Container(height: 50),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReportsScreen()),
              );
            },
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(width: 6, color: kGreen),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    kReport,
                    height: 100,
                  ),
                  Container(width: 10),
                  const Text(
                    'Reports',
                    style: TextStyle(
                        fontFamily: kFont, fontSize: 22, color: kGreen),
                  )
                ],
              ),
            )),
        const Spacer(),
        GestureDetector(
          onTap: () async {},
          child: Container(height: 50, width: 50, color: kGreen),
        ),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            kQuestion,
          ),
        )
      ],
    );
  }
}
