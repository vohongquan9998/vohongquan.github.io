import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/animation/bAnimation.dart';
import 'package:flutter_aboutme_web/animation/fade.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';
import 'package:flutter_aboutme_web/models/data.dart';
import 'package:flutter_aboutme_web/src/about/main_about.dart';
import 'package:flutter_aboutme_web/src/contact/contact.dart';
import 'package:flutter_aboutme_web/src/home/main_home.dart';
import 'package:flutter_aboutme_web/src/project/project.dart';
import 'package:flutter_aboutme_web/src/skills/skills.dart';
import 'package:flutter_aboutme_web/src/tech/tech.dart';
import 'package:flutter_aboutme_web/widget/background.dart';
import 'package:flutter_aboutme_web/widget/cardFrame.dart';
import 'package:flutter_aboutme_web/widget/clippath.dart';
import 'package:flutter_aboutme_web/widget/clippathDrawer.dart';
import 'package:flutter_aboutme_web/widget/footer.dart';
import 'package:flutter_aboutme_web/widget/gotoTop.dart';
import 'package:flutter_aboutme_web/widget/navbarlogo.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollControler =
      ScrollController(initialScrollOffset: 25.0);
  ItemScrollController itemScrollController = ItemScrollController();
  ItemPositionsListener itemPositionListener = ItemPositionsListener.create();
  bool isAppbar = false;
  final List<String> menuItems = [
    "Trang chủ",
    "Giới thiệu",
    "Công nghệ",
    "Kỹ năng",
    "Dự án",
    "Liên hệ"
  ];
  final List<IconData> menuIcon = [
    Icons.home,
    Icons.person,
    Icons.phone_android,
    Icons.palette,
    Icons.build,
    Icons.contact_mail,
  ];

  void scroll(int i) {
    itemScrollController.scrollTo(index: i, duration: Duration(seconds: 1));
  }

  List<Widget> listWidget() {
    List<Widget> list = [
      Home(),
      About(),
      Tech(),
      Skills(),
      Column(
        children: [
          Text(
            'Phần mềm',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
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
          for (var i = 0; i < kprojectTitle.length; i++)
            CardProject(
              index: i,
            ),
        ],
      ),
      Contact(),
      SizedBox(
        height: 40,
      ),
      GotoTopArrow(
        onClick: () => scroll(0),
      ),
      Footer(),
    ];
    return list;
  }

  Widget sectionWidget(int index) {
    for (var i = 0; i < listWidget().length; i++) {
      if (i == index) {
        return listWidget()[i];
      }
    }
  }

  // Widget sectionWidget(int i) {
  //   if (i == 0) {
  //     return Home();
  //   } else if (i == 1) {
  //     return About();
  //   } else if (i == 2) {
  //     return Skills();
  //   } else if (i == 3) {
  //     return Project();
  //   } else if (i == 4) {
  //     return Contact();
  //   } else if (i == 5) {
  //     return SizedBox(
  //       height: 40,
  //     );
  //   } else if (i == 6) {
  //     return GotoTopArrow(
  //       onClick: () => scroll(0),
  //     );
  //   } else if (i == 7) {
  //     return Footer();
  //   } else {
  //     return Container();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.centerRight,
              colors: [
            Colors.black,
            Colors.black87,
            Colors.black,
          ])),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: MediaQuery.of(context).size.width > 760
            ? appBarTabDesktop()
            : AppBar(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                iconTheme: IconThemeData(
                  color: kwhiteColor,
                ),
              ),
        drawer: MediaQuery.of(context).size.width < 760 ? appBarMobile() : null,
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: RawScrollbar(
                controller: scrollControler,
                thumbColor: kprimaryColor,
                thickness: 5.0,
                child: ScrollablePositionedList.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    itemScrollController: itemScrollController,
                    itemPositionsListener: itemPositionListener,
                    itemCount: listWidget().length,
                    itemBuilder: (context, index) {
                      return sectionWidget(index);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appBarAction(String childText, int index, IconData icon) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFade(
            offset: Offset(0, -25),
            delay: Duration(seconds: 2),
            duration: Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * .1,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hoverColor: kredCrimson,
                  onPressed: () => scroll(index),
                  child: Center(
                    child: Text(
                      childText,
                      style: MediaQuery.of(context).size.width >= 1000
                          ? TextStyle(
                              color: kwhiteColor,
                              fontSize: 20.0,
                            )
                          : TextStyle(
                              color: kwhiteColor,
                              fontSize: 15.0,
                            ),
                    ),
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(left: 10),
            child: MaterialButton(
              onPressed: () {
                scroll(index);
                Navigator.of(context).pop();
              },
              child: ListTile(
                leading: Icon(
                  icon,
                  color: Colors.green[900],
                ),
                title: Text(
                  childText,
                  style: TextStyle(fontSize: 20.0, color: Colors.green[900]),
                ),
              ),
              hoverColor: Colors.green[400],
            ),
          );
  }

  Widget appBarTabDesktop() {
    return PreferredSize(
      preferredSize: Size.fromHeight(150),
      child: ClipPath(
        clipper: ClipPathWidget(),
        child: NewGradientAppBar(
          elevation: 0.0,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.teal,
                Colors.indigo[800],
              ]),
          title: MediaQuery.of(context).size.width < 740
              ? EntranceFade(
                  duration: Duration(seconds: 1),
                  offset: Offset(0, -20),
                  delay: Duration(seconds: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < menuItems.length; i++)
                        appBarAction(menuItems[i], i, menuIcon[i]),
                    ],
                  ),
                )
              : EntranceFade(
                  duration: Duration(seconds: 1),
                  offset: Offset(0, -20),
                  delay: Duration(seconds: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < menuItems.length; i++)
                        appBarAction(menuItems[i], i, menuIcon[i]),
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  Widget appBarMobile() {
    return PreferredSize(
      preferredSize: Size.fromWidth(200),
      child: ClipPath(
        clipper: CustomDrawerClipper(),
        child: Drawer(
          child: Container(
            color: kgreenSea.withOpacity(.7),
            child: Stack(
              children: [
                Stack(
                  children: [
                    Positioned.fill(child: AnimationBackground()),
                    Positioned.fill(child: Particles(5)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    for (var i = 0; i < menuItems.length; i++)
                      Container(
                        child: appBarAction(menuItems[i], i, menuIcon[i]),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardProject extends StatelessWidget {
  final int index;
  CardProject({this.index});

  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green[300].withOpacity(.8),
                Colors.teal[400].withOpacity(.8)
              ],
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
        height: wid > 1200 ? hei * 0.8 : wid * .8,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: wid < 1200 ? 10 : 30, vertical: 30),
          child: WidgetAnimator(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: wid > 1200 ? wid * .1 : 30,
                  vertical: wid < 1200 ? 10 : 30),
              child: CardFrame(
                cardWidth: wid < 1200 ? wid * .8 : wid * .7,
                cardHeight: wid < 1200 ? hei * .8 : hei * .2,
                backImage: kprojectBanner[index],
                frameTitle: kprojectTitle[index],
                frameDescription: kprojectDescription[index],
                frameLink: kprojectLink[index],
                bottomWidget: Container(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
