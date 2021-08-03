import 'package:flutter/material.dart';

class CustomDrawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 3, 45);
    //path.lineTo(size.width, size.height / 3);
//    path.conicTo(size.width - 70, size.height / 2, size.width,
//        size.height / 2 + 70, 1.0);
    path.quadraticBezierTo(
        size.width, size.height / 6, size.width, size.height / 3);
    print(size.width);
    // path.arcToPoint(
    //   Offset(size.width, size.height / 2 + 45),
    //   radius: Radius.circular(45.0),
    //   clockwise: false,
    // );
//    path.addRect(Rect.fromLTWH(100.0, 10.0, 100.0, 100.0));
//    path.arcTo(Rect.fromLTWH(size.width - 70, size.height / 2, 70.0, 70.0), pi,
//        pi / 2, false);
    //path.lineTo(size.width, size.height / 2 + 70.0);
    path.quadraticBezierTo(size.width, size.height - size.height * .1,
        size.width - 200, size.height - size.height * .1);
    print(size.width);
    path.lineTo(size.width, size.height - size.height * .1);
    path.lineTo(0.0, size.height - size.height * .1);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
