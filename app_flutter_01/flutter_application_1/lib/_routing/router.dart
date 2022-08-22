import 'package:flutter/material.dart';
import 'package:flutter_application_1/_routing/routes.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_application_1/views/chat.dart';
import 'package:flutter_application_1/views/channel.dart';
import 'package:flutter_application_1/views/notice.dart';
import 'package:flutter_application_1/views/profile.dart';
import 'package:flutter_application_1/views/landing.dart';

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
    case profileViewRoute:
      return MaterialPageRoute(builder: (context) => ProfilePage());
    case noticeViewRoute:
      return MaterialPageRoute(builder: (context) => NoticePage());
      break;
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}


