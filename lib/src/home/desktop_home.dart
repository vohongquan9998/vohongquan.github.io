import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/animation/bAnimation.dart';
import 'package:flutter_aboutme_web/animation/fade.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/widget/background.dart';
import 'package:flutter_aboutme_web/widget/circleWidget.dart';
import 'package:flutter_aboutme_web/widget/clippath.dart';
import 'package:flutter_aboutme_web/widget/link_iconButton.dart';
import 'package:shimmer/shimmer.dart';

class DestopHome extends StatefulWidget {
  @override
  _DestopHomeState createState() => _DestopHomeState();
}

class _DestopHomeState extends State<DestopHome> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(
      height: hei,
      width: wid,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: ClipPathWidget(),
            child: Container(
              height: hei - 10,
              width: wid,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.centerRight,
                  colors: kgradientOrange,
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(child: AnimationBackground()),
                  Positioned.fill(child: Particles(5)),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(wid * .05, hei * .2, 0.2, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Xin chào ! ',
                      style: TextStyle(
                        fontSize: hei * .03,
                        fontWeight: FontWeight.w700,
                        color: kredCrimson,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    EntranceFade(
                      offset: Offset(0, 0),
                      delay: Duration(seconds: 2),
                      duration: Duration(milliseconds: 800),
                      child: Image.asset(
                        'assets/icons8-trash-dove-48.png',
                        height: hei * .05,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: hei * .04,
                ),
                Text(
                  'VÕ HỒNG',
                  style: TextStyle(
                      fontSize: wid < 1200 ? hei * .065 : hei * .075,
                      letterSpacing: 4,
                      color: kwhiteColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'QUÂN',
                    style: TextStyle(
                      color: kredCrimson,
                      fontSize: wid < 1200 ? hei * .085 : hei * .095,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                EntranceFade(
                  offset: Offset(-10, 0),
                  delay: Duration(seconds: 1),
                  duration: Duration(milliseconds: 800),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: hei * .1,
                        width: wid * .5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: kgradientRed,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                        ),
                        child: Center(
                          child: TyperAnimatedTextKit(
                            isRepeatingAnimation: true,
                            speed: Duration(milliseconds: 50),
                            textStyle: TextStyle(
                              fontSize: hei * .03,
                              fontWeight: FontWeight.w200,
                              color: kwhiteColor,
                            ),
                            text: khomeSkillText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: hei * .04,
                ),
                WidgetAnimator(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        for (int i = 0; i < kLinkIcon.length; i++)
                          WidgetAnimator(
                            child: LinkIconButton(
                              icon: kLinkIcon[i],
                              link: kLink[i],
                              height: hei * .05,
                              horizontalPadding: wid * .02,
                            ),
                          ),
                        SizedBox(
                          width: 5,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
