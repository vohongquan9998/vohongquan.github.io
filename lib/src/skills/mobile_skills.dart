import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/animation/bAnimation.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/widget/cardofSkill.dart';

class MobileSkills extends StatelessWidget {
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
                fontWeight: FontWeight.w500,
                color: kwhiteColor,
                letterSpacing: 1.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Khả năng của tôi chưa thật sự hoàn hảo,nhưng tôi sẽ cố hết sức để giúp đỡ bạn',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: kwhiteColor,
              ),
            ),
          ),
          SizedBox(
            height: hei * .01,
          ),
          CarouselSlider.builder(
            itemCount: kskilltitle.length,
            itemBuilder: (BuildContext context, int index, int i) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SkillCard(
                  cardWidth: wid < 650 ? wid * .8 : wid * .5,
                  skillIcon: kskillicons[i],
                  skillTitle: kskilltitle[i],
                  skillDescription: kskillDescription[i],
                ),
              );
            },
            options: CarouselOptions(
              height: hei * .45,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
          ),
        ],
      ),
    );
  }
}
