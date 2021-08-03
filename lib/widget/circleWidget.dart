import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final Color color;
  final double xOffset;
  final double yOffset;
  final double size;
  final Widget child;
  CircleWidget({this.color, this.xOffset, this.yOffset, this.size, this.child});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(xOffset, yOffset),
      child: Material(
        elevation: 15.0,
        color: color,
        child: Padding(
          padding: EdgeInsets.all(size),
          child: child,
        ),
        shape: CircleBorder(
          side: BorderSide(width: 0, color: Colors.transparent),
        ),
      ),
    );
  }
}
