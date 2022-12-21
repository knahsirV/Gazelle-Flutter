import 'package:flutter/material.dart';
import 'package:gazelle_flutter/Files.dart';
import 'package:gazelle_flutter/constants.dart';

class ReportsBody extends StatefulWidget {
  ReportsBody({Key? key, required this.reports});
  Map<String, Report> reports;
  @override
  State<ReportsBody> createState() => _ReportsBody(reports: reports);
}

class _ReportsBody extends State<ReportsBody> {
  _ReportsBody({Key? key, required this.reports});
  Map<String, Report> reports;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(height: 200),
          for (var k in reports.keys)
            (Container(
              height: 150,
              width: size.width - 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: kDarkGreen),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/report 1.png',
                      fit: BoxFit.fill,
                    ),
                    height: 140,
                    width: 130,
                  ),
                  // Container(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text(
                        (k == 'temp') ? 'Resume Draft' : '04/09/2003',
                        style: const TextStyle(
                            color: kWhite, fontFamily: kFont, fontSize: 30),
                      ),
                      Container(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 80,
                            decoration: BoxDecoration(
                                color: kLightGreen,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                                child: Text(
                              'open',
                              style: TextStyle(
                                  color: kDarkGreen,
                                  fontFamily: kFont,
                                  fontSize: 20),
                            )),
                          ),
                          Container(width: 10),
                          Container(
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                                color: kLightGreen,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                                child: Text(
                              'summarize',
                              style: TextStyle(
                                  color: kDarkGreen,
                                  fontFamily: kFont,
                                  fontSize: 20),
                            )),
                          )
                        ],
                      ),
                      Container(height: 15),
                    ],
                  )
                ],
              ),
            )),
        ],
      ),
    );
  }
}
