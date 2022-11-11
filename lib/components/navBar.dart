import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gazelle_flutter/constants.dart';

class navBar extends StatelessWidget {
  navBar({Key? key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 270,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(height: 30),
        Container(
          height: 60,
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(width: 1, color: kDarkGreen),
                  bottom: BorderSide(width: 1, color: kDarkGreen))),
          child: Center(
              child: Row(
            children: [
              Container(width: 20),
              SvgPicture.asset(kMenu, height: 40, width: 40),
              const Spacer(),
              Text('Person\'s Ranch',
                  style: TextStyle(
                      color: kGreen, fontFamily: kFont, fontSize: 20)),
              Container(width: 50)
            ],
          )),
        ),
        Padding(
            padding: EdgeInsets.only(left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(height: 10),
              Image.asset(
                'assets/images/GazelleLogo.png',
              ),
              Container(
                height: 30,
              ),
              const Text(
                'Welcome to Gazelle',
                style:
                    TextStyle(color: kBlack, fontSize: 16, fontFamily: kFont),
              ),
              Container(height: 10),
              Container(
                width: size.width * (0.8),
                child: const Text(
                  'The all in one tool for carrying capacity, land management, and economic output for ranchers.',
                  style:
                      TextStyle(color: kBlack, fontSize: 14, fontFamily: kFont),
                ),
              )
            ]))
      ]),
    );
  }
}
