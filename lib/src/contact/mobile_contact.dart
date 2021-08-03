import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/animation/bAnimation.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/widget/cardContact.dart';
import 'package:flutter_aboutme_web/widget/cardFrame.dart';

class MobileContact extends StatelessWidget {
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
            height: 10,
          ),
          CarouselSlider.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index, int i) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CardContact(
                  cardWidth: wid > 480 ? wid * .5 : wid * .8,
                  frameIconData: kContactIcons[i],
                  frameTitle: kContactTilte[i],
                  frameDescription: kContactDetail[i],
                  frameLink: kContactLink[i],
                ),
              );
            },
            options: CarouselOptions(
              height: hei * .3,
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
