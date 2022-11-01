import 'package:flutter/material.dart';

//usage: Navigator.of(context).push(next(widg()); ====== to
//       Navigator.pop(context) ======= go back

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
