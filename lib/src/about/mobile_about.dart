import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/widget/aboutMeText.dart';
import 'package:flutter_aboutme_web/widget/langMenu.dart';

class MobileAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: kgradientOrange,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: wid * .02, vertical: hei * .02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: hei * .054,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: kgradientOrange,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 6),
                  )
                ]),
            child: Center(
              child: Text(
                'Giới thiệu',
                style: TextStyle(
                    color: kwhiteColor,
                    fontSize: hei * .044,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: hei * .03,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: kgradientOrange,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 6),
                  )
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Về bản thân \n',
                    style: TextStyle(
                      color: kwhiteColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10),
                  child: Divider(
                    color: kwhiteColor,
                    height: 11,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AboutMeText(
                    fontsize: 16,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: hei * 0.03,
          ),
          // Container(
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         colors: kgradientOrange,
          //       ),
          //       borderRadius: BorderRadius.circular(20),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.black54,
          //           blurRadius: 10,
          //           spreadRadius: 1,
          //           offset: Offset(0, 6),
          //         )
          //       ]),
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: LangMenu(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
