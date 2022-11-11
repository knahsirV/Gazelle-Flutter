import 'package:flutter/material.dart';

// colors
const kBlack = Colors.black;
const kWhite = Colors.white;
const kBackground = Color(0xFFF7F7F1);
const kGreen = Color(0xFF5FA659);
const kDarkGreen = Color(0xFF275C4F);
const kLightGreen = Color(0xFFAFDB7F);
const kGrey = Color(0xFFEFEDED);

// fonts
const kFont = 'Lato';

// icons
const kUp = 'assets/icons/uparrow.svg';
const kDown = 'assets/icons/downarrow.svg';
const kLeft = 'assets/icons/leftarrow.svg';
const kRight = 'assets/icons/rightarrow.svg';
const kMenu = 'assets/icons/menu.svg';
const kProfile = 'assets/icons/profile.svg';
const kCalc = 'assets/icons/calculator.svg';
const kLongRight = 'assets/icons/longright.svg';
const kLongLeft = 'assets/icons/longleft.svg';
const kCalculate = 'assets/icons/calculate.svg';

//next animation
Route next(Widget widg) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => widg,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1, 0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
