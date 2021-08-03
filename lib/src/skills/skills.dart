import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/src/skills/desktop_skills.dart';
import 'package:flutter_aboutme_web/src/skills/mobile_skills.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileSkills(),
      desktop: DesktopSkills(),
    );
  }
}
