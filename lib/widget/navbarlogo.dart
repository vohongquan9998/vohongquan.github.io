import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  final double height;
  NavBarLogo({this.height});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0,
        5.0,
        0,
        0,
      ),
      child: Image(
        image: AssetImage(
          'assets/logo.png',
        ),
        width: height,
        height: height,
      ),
    );
  }
}
