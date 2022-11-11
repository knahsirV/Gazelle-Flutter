import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gazelle_flutter/constants.dart';

class cccBody extends StatefulWidget {
  cccBody({Key? key});
  @override
  State<cccBody> createState() => _cccBody();
}

class _cccBody extends State<cccBody> {
  _cccBody({Key? key});
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
            onTap: () {},
            child: Container(
              height: 150,
              width: 300,
              decoration: const BoxDecoration(
                  color: kGreen,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    kCalc,
                    height: 100,
                    color: kWhite,
                  ),
                  Container(width: 10),
                  const Text(
                    'New Calculation',
                    style: TextStyle(
                        fontFamily: kFont, fontSize: 22, color: kWhite),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
