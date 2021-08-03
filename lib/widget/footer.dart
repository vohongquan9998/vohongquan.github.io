import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/animation/bAnimation.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/widget/clippathfooter.dart';

import 'link_iconButton.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        ClipPath(
          clipper: ClipPathFooter(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: kgradientOrange,
              ),
            ),
            height: hei * .3,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: wid > 1200 ? wid * .1 : 90,
              height: wid > 1200 ? hei * .1 : 90,
            ),
            Center(
              child: Text(
                '© 2021 - VoHongQuan',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: hei * .02,
                    color: kwhiteColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
