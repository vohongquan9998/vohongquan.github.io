import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:url_launcher/url_launcher.dart';

class CardContact extends StatefulWidget {
  final String frameIcon;
  final IconData frameIconData;
  final String frameTitle;
  final String frameDescription;
  final String frameLink;
  final double cardWidth;
  final double cardHeight;
  final String backImage;
  final List<String> frameLang;
  final Widget bottomWidget;

  const CardContact(
      {Key key,
      this.frameIcon,
      this.frameIconData,
      this.frameTitle,
      this.frameDescription,
      this.frameLink,
      this.cardWidth,
      this.cardHeight,
      this.frameLang,
      this.backImage,
      this.bottomWidget})
      : super(key: key);

  @override
  _CardContactState createState() => _CardContactState();
}

class _CardContactState extends State<CardContact> {
  bool isHover = false;
  bool isLongClick = false;
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return InkWell(
      onLongPress: wid < 1200
          ? () {
              setState(() {
                isLongClick = true;
              });
            }
          : null,
      onTap: () => launch(widget.frameLink),
      onHover: (isHovering) {
        if (isHovering) {
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
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: kgradientOrange,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.only(
              topRight: wid < 600 ? Radius.circular(30) : Radius.circular(30),
              topLeft: Radius.circular(5),
              bottomLeft: wid < 600 ? Radius.circular(30) : Radius.circular(30),
              bottomRight: Radius.circular(5),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 6),
              )
            ]),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.frameIcon != null
                    ? Image.asset(
                        widget.frameIcon,
                        height: hei * .1,
                        width: wid < 1200 ? wid * .1 : wid,
                      )
                    : Container(),
                widget.frameIconData != null
                    ? Icon(
                        widget.frameIconData,
                        color: Colors.white,
                        size: hei * .1,
                      )
                    : Container(),
                Text(
                  widget.frameTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: hei * .02,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: hei * .01,
                ),
                wid < 1200
                    ? Container()
                    : Text(
                        widget.frameDescription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: hei * .015,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w400,
                          height: wid >= 600 ? 2.0 : 1.5,
                        ),
                      ),
                SizedBox(
                  height: hei * .02,
                ),
                widget.bottomWidget ?? Container(),
              ],
            ),
            AnimatedOpacity(
              duration: Duration(
                milliseconds: 400,
              ),
              opacity: (isHover || isLongClick) ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: widget.backImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: wid < 600
                              ? Radius.circular(120)
                              : Radius.circular(30),
                          topLeft: Radius.circular(5),
                          bottomLeft: wid < 600
                              ? Radius.circular(120)
                              : Radius.circular(30),
                          bottomRight: Radius.circular(5),
                        ),
                        child: Image.asset(
                          widget.backImage,
                          filterQuality: FilterQuality.high,
                        ),
                      )
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
