import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gazelle_flutter/components/progressbar.dart';
import 'package:gazelle_flutter/constants.dart';
import 'package:gazelle_flutter/screens/tree_input.dart';

class Animal_Slider extends StatefulWidget {
  Animal_Slider({Key? key});
  @override
  State<Animal_Slider> createState() => _Animal_Slider();
}

class _Animal_Slider extends State<Animal_Slider> {
  _Animal_Slider({Key? key});
  var weights = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: ProgressBar(),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Tree_Input()),
              );
            },
            child: Container(
                color: kGreen,
                height: 50,
                width: 200,
                child: const Center(
                    child: Text(
                  'Next',
                  style: TextStyle(fontSize: 20, fontFamily: kFont),
                ))),
          )
        ]),
      ),
    );
  }
}

class animalSlider extends StatelessWidget {
  animalSlider({
    Key? key,
    required this.value,
    required this.type,
  }) : super(key: key);
  double value;
  String type;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        width: size.width - 20,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              type,
              style: TextStyle(),
            )
          ],
        )));
  }
}
