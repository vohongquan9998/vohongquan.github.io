import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/models/data.dart';

class LangMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Công nghệ đã từng học',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: hei * .045,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  for (int i = 0; i < kLangs_1.length / 2; i++)
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                        child: Text(
                          ' ${kLangs_1[i]}',
                          style: wid <= 600
                              ? TextStyle(color: Colors.grey[800], fontSize: 20)
                              : TextStyle(color: Colors.grey[800]),
                        ),
                      ),
                    ),
                  (wid <= 600 || wid >= 950)
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width * .04,
                        )
                      : SizedBox(),
                ],
              ),
              SizedBox(
                width: wid * .02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  for (var i = kLangs_1.length / 2; i < kLangs_1.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                        child: Text(
                          ' ${kLangs_1[i.toInt()]}',
                          style: wid <= 600
                              ? TextStyle(color: Colors.grey[800], fontSize: 20)
                              : TextStyle(color: Colors.grey[800]),
                        ),
                      ),
                    ),
                  (wid <= 600 || wid >= 950)
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width * .04,
                        )
                      : SizedBox(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
