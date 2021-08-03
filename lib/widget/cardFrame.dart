import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:url_launcher/url_launcher.dart';

class CardFrame extends StatefulWidget {
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

  const CardFrame(
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
  _CardFrameState createState() => _CardFrameState();
}

class _CardFrameState extends State<CardFrame> {
  bool isHover = false;
  bool isLongClick = false;
  bool isOpenInfo = false;
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
            Image.asset(
              widget.backImage,
              isAntiAlias: true,
              filterQuality: FilterQuality.high,
            ),
            Positioned(
              left: wid < 600 ? 10 : wid * .04,
              right: 0,
              bottom: wid < 600 ? 10 : hei * .03,
              child: AnimatedOpacity(
                duration: Duration(
                  milliseconds: 400,
                ),
                opacity: (isHover || isLongClick) ? 1.0 : 0.0,
                child: Container(
                  height: hei * .09,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.grey[300], Colors.grey[600]],
                        begin: Alignment.centerLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        topLeft: Radius.circular(35),
                      )),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.frameTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: hei * .02,
                          letterSpacing: 1.5,
                          color: Colors.teal[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      wid < 1200
                          ? Container()
                          : Text(
                              widget.frameDescription,
                              textAlign: TextAlign.center,
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: hei * .014,
                                letterSpacing: 2,
                                color: Colors.teal[900],
                                fontWeight: FontWeight.w600,
                                height: wid >= 600 ? 1.7 : 1.5,
                              ),
                            ),
                      widget.bottomWidget ?? Container(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
