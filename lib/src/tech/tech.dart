import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/src/tech/desktop_tech.dart';
import 'package:flutter_aboutme_web/src/tech/mobile_tech.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Tech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileTech(),
      desktop: DesktopTech(),
    );
  }
}
