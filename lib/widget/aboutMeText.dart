import 'package:flutter/material.dart';

class AboutMeText extends StatelessWidget {
  final TextAlign textAlign;
  final double fontsize;

  TextStyle _textStyle(double fsize, bool bold) {
    return TextStyle(
      fontSize: fsize ?? 18,
      fontWeight: !bold ? FontWeight.w400 : FontWeight.bold,
      letterSpacing: 1,
      height: 2.0,
      color: Colors.grey[800],
    );
  }

  AboutMeText({this.fontsize, this.textAlign});
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(
        children: [
          TextSpan(
            text:
                "Xin chào,tôi là Võ Hồng Quân.Trước tiên tôi xin cảm ơn bạn đã truy cập trang web này của tôi\n\n",
            style: MediaQuery.of(context).size.width < 600
                ? _textStyle(fontsize, true)
                : _textStyle(fontsize + 2, true),
          ),
          TextSpan(
            text:
                "Hiện tại tôi đã làm quen với lập trình được 2 năm và có kỹ năng cũng như kinh nghiệm làm việc với Flutter & C-sharp.",
            style: MediaQuery.of(context).size.width < 600
                ? _textStyle(fontsize, false)
                : _textStyle(fontsize + 2, false),
          ),
          TextSpan(
            text:
                "\nTuy nhiên tôi sẽ tiếp tục học tập và rèn luyện với các ngôn ngữ tôi yêu thích.\n",
            style: MediaQuery.of(context).size.width < 600
                ? _textStyle(fontsize, false)
                : _textStyle(fontsize + 2, false),
          ),
        ],
      ),
    );
  }
}
