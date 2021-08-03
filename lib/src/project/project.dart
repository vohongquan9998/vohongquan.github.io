import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/src/project/desktop_project.dart';
import 'package:flutter_aboutme_web/src/project/mobile_project.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileProject(),
      desktop: DesktopProject(),
      tablet: MobileProject(),
    );
  }
}
