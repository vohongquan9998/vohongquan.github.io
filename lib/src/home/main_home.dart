import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/src/home/desktop_home.dart';
import 'package:flutter_aboutme_web/src/home/mobile_home.dart';
import 'package:flutter_aboutme_web/src/home/tablet_home.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileHome(),
      desktop: DestopHome(),
      //tablet: TabletHome(),
    );
  }
}
