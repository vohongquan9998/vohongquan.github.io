import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';

class LinkIconButton extends StatelessWidget {
  final String icon;
  final String link;
  final double height;
  final double horizontalPadding;

  LinkIconButton({this.icon, this.link, this.height, this.horizontalPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: IconButton(
        icon: Image.asset(icon),
        iconSize: height,
        hoverColor: kwhiteColor,
        onPressed: () => launcherURL(link),
      ),
    );
  }
}
