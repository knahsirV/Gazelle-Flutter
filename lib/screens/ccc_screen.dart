import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gazelle_flutter/components/ccc_body.dart';
import 'package:gazelle_flutter/constants.dart';

class cccScreen extends StatelessWidget {
  cccScreen({Key? key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child:
          Stack(
            children: [
              Positioned(
              left: 310,
              top: 20,
              child: SvgPicture.asset(
                kGear,
              ),
          ),
          Container(
              height: 120,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:
                    Container(
                      height: 30,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: kLightGreen,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20))),
                      child: Center(
                          child: SvgPicture.asset(kLongLeft,
                              color: kWhite, height: 90)),
                    ),
                  )
                ])
          ),
          ],
          )),
      body: cccBody(),
    );
  }
}
