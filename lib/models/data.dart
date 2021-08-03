import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Color kprimaryColor = Colors.blue[300];

const kLinkIcon = [
  "assets/icons8-message-read.gif",
  "assets/icons8-facebook-circled.gif",
  "assets/icons8-github.gif",
];

const kLink = [
  "mailto:vohongquan9998@gmail.com",
  "https://www.facebook.com/profile.php?id=100010681029313",
  "https://github.com/vohongquan9998",
];
void launcherURL(String url) async {
  await canLaunch(url) ? await launch(url) : throw 'Liên kết đến $url thất bại';
}

final kSchoolLogo = ['assets/schoollogo.png'];
final kSchoolLink = ['https://lttc.edu.vn/'];

final kLangs_1 = [
  "Flutter",
  "Dart",
  "C-Sharp",
  "Java",
  "VS Studio",
  "VS Code",
  'SQL-Server',
  'Firebase'
];
final kLangValue = [
  0.75,
  0.75,
  0.8,
  0.5,
  0.7,
  0.65,
  0.65,
  0.5,
];
final khomeSkillText = [
  'Flutter Mobile & Web Skills',
  'C-Sharp Software Skills',
  'Knowledge of Google API',
  'Android App using Java',
];

final kskillicons = [
  'assets/app.png',
  'assets/destop.png',
  'assets/sql.png',
  'assets/ml.png',
  'assets/opensource.png',
];
final kskilltitle = [
  'Flutter App Development',
  'Desktop Software Development using C-Sharp',
  'Database Design using SqlServer or Firebase',
  'Machine Learning',
  'Open Source - GitHub',
];
final kskillDescription = [
  'Tôi có kinh nghiệm cũng như kĩ năng về Flutter,tôi có khả năng thiết kế UI và xữ lý dữ liệu thông qua Firebase.',
  'Tôi có hơn 1 năm kinh nghiệm học tập và nghiên cứu về C-Sharp Winform,có khả năng tự thiết kế và phát triển 1 dự án nhỏ bằng C# Winform và xữ lý dữ liệu qua Sql Server',
  'Khả năng thiết kế cơ sở dữ liệu các dự án nhỏ và tầm trung sử dụng Sql Server hoặc FireStore FireBase',
  'Tôi rất thích thú khi học về khoa học máy tính và nghiên cứu về API,có thể phát triển các phần mền sử dụng trí tuệ nhân tạo thông qua Flutter',
  'Việc chia sẽ những kiến thức mà bản thân có được cho cộng đồng là 1 việc làm tích cực,mang lại niềm vui cho tôi và sẵn sàng tiếp nhận những chia sẽ của mọi người để khiến kỹ năng của bản thân hoàn thiện hơn',
];

final kprojectBanner = [
  'assets/bannerworldapp.png',
  'assets/bannervn.png',
  'assets/bannernote.png',
  'assets/bannersound.png',
  'assets/bannerloginpackage.png',
  'assets/bannermemorygame.png',
  'assets/bannerslide.png',
  'assets/bannercalculator.png',
  'assets/bannerpaint.png',
  'assets/banner2048.png',
  'assets/bannerlogin.png',
];

final kprojectTitle = [
  'World Time App',
  'Việt Nam qua các thời kì',
  'Note Me',
  'Relax Sound',
  'Login Package',
  'Couple-ProgrammingLanguage Game',
  "Game Slide Puzzle",
  "Calculator App",
  'Paint App',
  "Game 2048",
  "Login UI with Particles Animation",
];
final kprojectDescription = [
  "Ứng dụng hiển thị thời gian ở các nước vòng quanh thế giới",
  "Ứng dụng liệt kê các thời kì của đất nước Việt Nam",
  "Ứng dụng lưu trữ lời nhắn,sử dụng dễ dàng và tiện lợi",
  'Ứng dụng phát nhạc sử dụng các âm thanh như tiếng mưa,sóng biển,khu rừng,...Giúp bạn có thể chìm vào giấc ngủ dễ dàng.',
  'Một package chứa các giao diện UI login do tôi tự thiết kế',
  'Trò chơi ghi nhớ và tìm các cặp gióng nhau dựa vào các icon của các ngôn ngữ lập trình phổ biến',
  "Trò chơi Slide Puzzle,người chơi sẽ sắp xếp một ma trận số theo thứ tự từ 1 - 15",
  "Phần mềm giả lập máy tính cầm tay,hỗ trợ người dùng có thể tính những phép tính không quá phức tạp và một cách nhanh chóng",
  "Có thể nói Paint là phần mềm đơn giản có mặt ở hầu hết các máy tính.Tuy nhiên bây giờ bạn có thể sử dụng nó trên chiếc smart phone của bạn",
  "Trò chơi 2048 nổi tiếng,được thiết kế lại với giao diện dark mode,tuy cơ chế trò chơi đơn giản nhưng vô cùng lôi cuốn",
  "Giao diện đăng nhập được thiết kế kèm theo hiệu ứng Hạt giúp giao diện trở nên tinh tế hơn",
];
final kprojectLink = [
  'https://github.com/vohongquan9998/fluttrer_worldtime_app',
  'https://github.com/vohongquan9998/flutter_historyofVietNam',
  'https://github.com/vohongquan9998/flutter_noteMe',
  'https://github.com/vohongquan9998/flutter_relax_sound',
  'https://github.com/vohongquan9998/flutter_loginUI_package',
  'https://github.com/vohongquan9998/flutter_couple_programminglanguage_game',
  'https://github.com/vohongquan9998/flutter_slide_puzzle',
  'https://github.com/vohongquan9998/flutter_calculator_app/tree/main/flutter_calculator',
  'https://github.com/vohongquan9998/flutter_paint_app/tree/main/flutter_paint',
  'https://github.com/vohongquan9998/flutter_2048',
  'https://github.com/vohongquan9998/flutter_Login_UIwithAnimation/tree/main/login_page',
];

final kContactIcons = [
  Icons.phone,
  Icons.mail,
];
final kContactTilte = [
  'Phone',
  'Email',
];
final kContactDetail = ['(+84)347955833', 'vohongquan9998@gmail.com'];
final kContactLink = ['tel:0347955833', 'mailto:vohongquan9998@gmail.com'];
