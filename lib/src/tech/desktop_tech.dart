import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DesktopTech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;

    return Container(
      width: wid,
      height: hei * .8,
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
                    Container(
                      width: wid * .15,
                      height: hei * .2,
                      child: CircularPercentIndicator(
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.green[400], Colors.green[900]],
                        ),
                        radius: wid > 1900 ? 150 : 100.0,
                        lineWidth: 11.0,
                        percent: kLangValue[i].toDouble(),
                        center: Text(
                          kLangs_1[i] +
                              '\n' +
                              (kLangValue[i] * 100).toString() +
                              '%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    width: wid * .01,
                  )
                ],
              ),
              SizedBox(
                height: hei * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var j = kLangs_1.length / 2; j < kLangs_1.length; j++)
                    Container(
                      width: wid * .15,
                      height: hei * .2,
                      child: CircularPercentIndicator(
                        radius: wid > 1900 ? 150 : 100.0,
                        lineWidth: 11.0,
                        percent: kLangValue[j.toInt()].toDouble(),
                        center: Text(
                          kLangs_1[j.toInt()] +
                              '\n' +
                              (kLangValue[j.toInt()] * 100).toString() +
                              '%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.green[400], Colors.green[900]],
                        ),
                      ),
                    ),
                  SizedBox(
                    width: wid * .01,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
