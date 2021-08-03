import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillCard extends StatefulWidget {
  final String skillIcon;
  final String skillTitle;
  final String skillDescription;
  final String skillLink;
  final double cardWidth;
  final double cardHeight;

  const SkillCard(
      {Key key,
      this.skillIcon,
      this.skillTitle,
      this.skillDescription,
      this.skillLink,
      this.cardWidth,
      this.cardHeight})
      : super(key: key);

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => launch(widget.skillLink),
      onHover: (isHoving) {
        if (isHoving) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: kgradientOrange,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(60),
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(6, 6),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              widget.skillIcon,
              height: hei * .15,
            ),
            SizedBox(
              height: hei * .02,
            ),
            Text(
              widget.skillTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: hei * .02,
                letterSpacing: 2,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: hei * .01,
            ),
            Expanded(
              child: Text(
                widget.skillDescription,
                textAlign: TextAlign.center,
                maxLines: wid < 1200 ? 5 : 7,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: hei * .014,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500,
                  height: wid < 900 ? 2.3 : 1.5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
