import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/src/contact/desktop_contact.dart';
import 'package:flutter_aboutme_web/src/contact/mobile_contact.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContact(),
      desktop: DesktopContact(),
    );
  }
}
