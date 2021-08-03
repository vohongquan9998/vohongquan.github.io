import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/widget/aboutMeText.dart';
import 'package:flutter_aboutme_web/widget/langMenu.dart';
import 'package:flutter_aboutme_web/widget/navbarlogo.dart';

class DesktopAbout extends StatelessWidget {
  final schoolLogoHeight = [50.0];

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: wid * .02, vertical: hei * .02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(
              'Giới thiệu',
              style: TextStyle(
                  fontSize: hei * .06,
                  fontWeight: FontWeight.w500,
                  color: kwhiteColor,
                  letterSpacing: 1.0),
            ),
          ),
          SizedBox(
            height: hei * .03,
          ),
          Column(
            children: [
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
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Một vài lời nói về bản thân\n',
                                    style: TextStyle(
                                      color: kwhiteColor,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 10.0, right: 10),
                                  child: Divider(
                                    color: kwhiteColor,
                                    height: 11,
                                  ),
                                ),
                                AboutMeText(
                                  fontsize: wid <= 1100 ? 14 : 16,
                                ),
                              ],
                            ),
                          ),
                          // (wid <= 950 && wid >= 1185)
                          //     ? Container()
                          //     : Expanded(child: Container()),
                          // wid >= 1185
                          //     ? Expanded(
                          //         flex: 2,
                          //         child: Padding(
                          //           padding: const EdgeInsets.symmetric(
                          //               horizontal: 20),
                          //           child: Container(
                          //             height: hei * .35,
                          //             width: wid * .35,
                          //             decoration: BoxDecoration(
                          //                 gradient: LinearGradient(
                          //                   colors: kgradientOrange,
                          //                 ),
                          //                 borderRadius:
                          //                     BorderRadius.circular(20),
                          //                 // shape: BoxShape.circle,
                          //                 boxShadow: [
                          //                   BoxShadow(
                          //                     color: Colors.black54,
                          //                     blurRadius: 10,
                          //                     spreadRadius: 1,
                          //                     offset: Offset(0, 6),
                          //                   )
                          //                 ]),
                          //             child: Center(
                          //                 child: Padding(
                          //               padding: const EdgeInsets.only(top: 25),
                          //               child: LangMenu(),
                          //             )),
                          //           ),
                          //         ))
                          //     : Padding(
                          //   padding: const EdgeInsets.symmetric(
                          //       horizontal: 20),
                          //   child: Container(
                          //       decoration: BoxDecoration(
                          //           gradient: LinearGradient(
                          //             colors: kgradientOrange,
                          //           ),
                          //           borderRadius:
                          //               BorderRadius.circular(20),
                          //           boxShadow: [
                          //             BoxShadow(
                          //               color: Colors.black54,
                          //               blurRadius: 10,
                          //               spreadRadius: 1,
                          //               offset: Offset(0, 6),
                          //             )
                          //           ]),
                          //       child: Center(
                          //           child: Padding(
                          //         padding: const EdgeInsets.only(top: 25),
                          //         child: LangMenu(),
                          //       ))),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: hei * 0.055,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WhiteBox extends StatelessWidget {
  const WhiteBox({
    Key key,
    this.wid,
    this.hei,
    this.child,
  }) : super(key: key);

  final Widget child;
  final double wid;
  final double hei;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wid * .1,
      height: hei * .1,
      decoration: BoxDecoration(
        color: kwhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
