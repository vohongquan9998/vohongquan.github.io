import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/animation/bAnimation.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/widget/cardofSkill.dart';

class DesktopSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: wid * .02, vertical: hei * .02),
      child: Column(
        children: <Widget>[
          Text(
            '\nKiến thức',
            style: TextStyle(
                fontSize: hei * .06,
                color: kwhiteColor,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.0),
          ),
          Text(
            'Khả năng của tôi chưa thật sự hoàn hảo,nhưng tôi sẽ cố hết sức để giúp đỡ bạn',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: kwhiteColor,
            ),
          ),
          SizedBox(
            height: hei * .02,
          ),
          Center(
            child: Container(
              height: wid < 1200 ? hei * .45 : hei * .45,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: kskilltitle.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: WidgetAnimator(
                          child: SkillCard(
                            cardHeight: wid < 1200 ? hei * .4 : hei * .35,
                            cardWidth: wid < 1200 ? wid * .27 : wid * .18,
                            skillIcon: kskillicons[index],
                            skillTitle: kskilltitle[index],
                            skillDescription: kskillDescription[index],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
