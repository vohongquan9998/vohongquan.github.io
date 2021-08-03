import 'package:flutter/material.dart';
import 'package:flutter_aboutme_web/contrant/contrant.dart';

class GotoTopArrow extends StatefulWidget {
  final VoidCallback onClick;
  GotoTopArrow({this.onClick});

  @override
  _GotoTopArrowState createState() => _GotoTopArrowState();
}

class _GotoTopArrowState extends State<GotoTopArrow> {
  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20, bottom: 20),
          child: InkWell(
            onTap: widget.onClick,
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
              child: Icon(
                Icons.arrow_drop_up_outlined,
                color: Colors.white,
                size: MediaQuery.of(context).size.height * .08,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
