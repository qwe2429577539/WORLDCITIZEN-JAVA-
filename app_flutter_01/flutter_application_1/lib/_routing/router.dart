import 'package:flutter/material.dart';
import 'package:flutter_application_1/_routing/routes.dart';
import 'package:flutter_application_1/mainpage/home.dart';
import 'package:flutter_application_1/mainpage/chat.dart';
import 'package:flutter_application_1/mainpage/channel.dart';
import 'package:flutter_application_1/mainpage/notice.dart';
import 'package:flutter_application_1/mainpage/profile.dart';
import 'package:flutter_application_1/mainpage/landing.dart';
import 'package:flutter_application_1/subpage/contact.dart';
import 'package:flutter_application_1/subpage/joincourse_main.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case landingViewRoute:
      return MaterialPageRoute(builder: (context) => LandingPage());

    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case channelViewRoute:
      return MaterialPageRoute(builder: (context) => ChannelPage());
    case chatViewRoute:
      return MaterialPageRoute(builder: (context) => ChatPage());
    case contactRoute:
      return MaterialPageRoute(builder: (context) => ContactPage());
    case profileViewRoute:
      return MaterialPageRoute(builder: (context) => ProfilePage());
    case noticeViewRoute:
      return MaterialPageRoute(builder: (context) => NoticePage());
    case joinCourseMainViewRoute:
      return MaterialPageRoute(builder: (context) => JoinCourseMainPage());
      break;
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
