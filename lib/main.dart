import 'package:flutter/material.dart';
import 'package:gazelle_flutter/constants.dart';
import 'package:gazelle_flutter/screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          backgroundColor: kBackground,
          primarySwatch: Colors.blue,
        ),
        home: DashScreen());
  }
}
