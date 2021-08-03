import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/animation/bAnimation.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/widget/cardContact.dart';
import 'package:flutter_aboutme_web/widget/cardFrame.dart';

class DesktopContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            '\nLiên Hệ',
            style: TextStyle(
                fontSize: hei * .06,
                fontWeight: FontWeight.w400,
                color: kwhiteColor,
                letterSpacing: 1.0),
          ),
          Text(
            'Liên hệ tôi nếu bạn cần sự giúp đỡ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: kwhiteColor,
            ),
          ),
          SizedBox(
            height: hei * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < kContactTilte.length; i++)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: WidgetAnimator(
                    child: CardContact(
                      cardWidth: wid < 1200 ? wid * .25 : wid * .2,
                      cardHeight: wid < 1200 ? hei * .28 : hei * .25,
                      frameIconData: kContactIcons[i],
                      frameTitle: kContactTilte[i],
                      frameDescription: kContactDetail[i],
                      frameLink: kContactLink[i],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
