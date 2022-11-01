import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gazelle_flutter/constants.dart';

class DashBody extends StatefulWidget {
  DashBody({Key? key});
  @override
  State<DashBody> createState() => _DashBody();
}

class _DashBody extends State<DashBody> {
  _DashBody({Key? key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(height: 40),
        DashObject(name: 'Carrying Capacity', icon: kCalc)
      ],
    ));
  }
}

class DashObject extends StatelessWidget {
  DashObject({Key? key, required this.name, required this.icon});
  String name, icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: kGreen),
          height: 150,
          width: 300,
          child: Column(children: [
            Container(height: 20),
            SvgPicture.asset(icon, height: 70, width: 70, color: kWhite),
            Expanded(
                child: Column(
              children: [
                const Spacer(),
                Text(
                  name,
                  style: const TextStyle(
                      fontFamily: kFont, fontSize: 20, color: kWhite),
                ),
                const Spacer()
              ],
            ))
          ]),
        ));
  }
}
