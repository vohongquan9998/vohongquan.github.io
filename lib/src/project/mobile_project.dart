import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/animation/bAnimation.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/widget/cardFrame.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: wid * .02, vertical: hei * .02),
      child: Column(
        children: <Widget>[
          Text(
            'Phần mềm',
            style: TextStyle(
                fontSize: hei * .06,
                fontWeight: FontWeight.w400,
                color: kwhiteColor,
                letterSpacing: 1),
          ),
          Text(
            'Một vài dự án nhỏ của tôi.',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: kwhiteColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: kgradientOrange,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(6, 6),
                  )
                ]),
            height: wid > 1200 ? hei * 0.45 : wid * .8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return WidgetAnimator(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: CardFrame(
                          cardWidth: wid < 1200 ? wid * .75 : wid * .55,
                          cardHeight: wid < 1200 ? hei * .7 : hei * .2,
                          backImage: kprojectBanner[index],
                          frameTitle: kprojectTitle[index],
                          frameDescription: kprojectDescription[index],
                          frameLink: kprojectLink[index],
                          bottomWidget: Container(),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return VerticalDivider(
                      color: Colors.transparent,
                      width: wid * .015,
                    );
                  },
                  itemCount: kprojectTitle.length),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            color: Colors.teal,
            height: hei * .07,
            hoverColor: kwhiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              launch("https://github.com/vohongquan9998");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Xem tất cả',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
