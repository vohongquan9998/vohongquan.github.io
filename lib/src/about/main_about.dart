import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/src/about/desktop_about.dart';
import 'package:flutter_aboutme_web/src/about/mobile_about.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: ScreenTypeLayout(
        mobile: MobileAbout(),
        desktop: DesktopAbout(),
      ),
    );
  }
}
