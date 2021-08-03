import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MobileTech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;

    return Container(
      width: wid,
      height: hei * .9,
      child: Column(
        children: [
          Text(
            '\nCông nghệ',
            style: TextStyle(
                fontSize: hei * .06,
                color: kwhiteColor,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.0),
          ),
          Text(
            'Những công nghệ tôi đã từng nghiên cứu qua',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: kwhiteColor,
            ),
          ),
          SizedBox(
            height: hei * .1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var i = 0; i < kLangs_1.length / 2; i++)
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: wid * .05,
                            height: hei * .12,
                            child: CircularPercentIndicator(
                              linearGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.green[400], Colors.green[900]],
                              ),
                              radius: 80.0,
                              lineWidth: 5.0,
                              curve: Curves.bounceInOut,
                              percent: kLangValue[i].toDouble(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: hei * .02,
                        ),
                        Text(
                          kLangs_1[i],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              SizedBox(
                height: hei * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var j = kLangs_1.length / 2; j < kLangs_1.length; j++)
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: wid * .05,
                            height: hei * .12,
                            child: CircularPercentIndicator(
                              radius: 80.0,
                              lineWidth: 5.0,
                              percent: kLangValue[j.toInt()].toDouble(),
                              linearGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.green[400], Colors.green[900]],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: hei * .02,
                        ),
                        Text(
                          kLangs_1[j.toInt()],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
