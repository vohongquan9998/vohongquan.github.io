import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/animation/bAnimation.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/widget/background.dart';
import 'package:flutter_aboutme_web/widget/clippath.dart';
import 'package:flutter_aboutme_web/widget/link_iconButton.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(
      height: hei,
      width: wid,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: -wid * .15,
            child: Opacity(
              opacity: .7,
            ),
          ),
          ClipPath(
            clipper: ClipPathWidget(),
            child: Container(
              height: hei - hei * .1,
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
            padding: EdgeInsets.only(top: hei * .045),
            margin: EdgeInsets.fromLTRB(wid * .07, hei * .12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Xin chào!',
                      style: TextStyle(
                          fontSize: hei * .025,
                          fontWeight: FontWeight.w800,
                          color: kredCrimson),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/icons8-trash-dove-48.png',
                      height: hei * .04,
                    ),
                  ],
                ),
                SizedBox(
                  height: hei * .01,
                ),
                Text(
                  'VÕ HỒNG',
                  style: TextStyle(
                    fontSize: hei * .055,
                    letterSpacing: 1.1,
                    color: kwhiteColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'QUÂN',
                    style: TextStyle(
                      color: kredCrimson,
                      fontSize: hei * .065,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: hei * .01,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: hei * .1,
                      width: wid * .9,
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
                            fontWeight: FontWeight.w500,
                            color: kwhiteColor,
                          ),
                          text: khomeSkillText,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: hei * .035,
                ),
                WidgetAnimator(
                  child: Container(
                    width: wid * .9,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          for (int i = 0; i < kLinkIcon.length; i++)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: WidgetAnimator(
                                child: LinkIconButton(
                                  icon: kLinkIcon[i],
                                  link: kLink[i],
                                  height: hei * .03,
                                  horizontalPadding: 2,
                                ),
                              ),
                            ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
