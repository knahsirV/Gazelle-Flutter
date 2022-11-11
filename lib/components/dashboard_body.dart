import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gazelle_flutter/constants.dart';
import 'package:gazelle_flutter/screens/ccc_screen.dart';

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
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => cccScreen()),
            );
          },
          child: DashObject(
            name: 'Carrying Capacity Calculator',
            desc:
                'Calculate the most efficient distribution of livestock for your land.',
          ),
        ),
        Container(height: 20),
        DashObject(
            name: 'Land Management', desc: 'Effectively manage your land'),
        Container(height: 20),
        DashObject(
            name: 'Livestock Managment',
            desc: 'Effectively manage your livestock'),
        Container(height: 20),
        DashObject(
            name: 'Wild Fire Risk Assesment',
            desc:
                'See the risks associated with your property and its potential to catch fire'),
        Container(height: 20),
        DashObject(
            name: 'Economic Calculations',
            desc:
                'Determine the economic profits associated with the current layout of your property')
      ],
    ));
  }
}

class DashObject extends StatelessWidget {
  DashObject({Key? key, required this.name, required this.desc});
  String name, desc;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: kDarkGreen),
            height: 170,
            width: size.width - 40,
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      child: Text(
                        name,
                        style: const TextStyle(
                            color: kWhite, fontFamily: kFont, fontSize: 22),
                      ),
                    ),
                    Container(height: 20),
                    Container(
                        width: 300,
                        child: Text(desc,
                            style: const TextStyle(
                                color: kWhite,
                                fontFamily: kFont,
                                fontSize: 16))),
                    const Spacer(),
                    Row(
                      children: [
                        const Spacer(),
                        Container(
                          height: 30,
                          width: 120,
                          decoration: const BoxDecoration(
                              color: kLightGreen,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Center(
                              child: SvgPicture.asset(kLongRight, height: 60)),
                        ),
                      ],
                    )
                  ]),
            )));
  }
}
