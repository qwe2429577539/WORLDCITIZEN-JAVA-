import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/_routing/routes.dart';
import 'package:flutter_application_1/components/ColorTheme.dart'
    as color_theme;

const joinMoreCourses = "JoinMoreCourses";

Widget backButton = Container(
  margin: const EdgeInsets.only(left: 20),
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(11),
    color: color_theme.buttonDark,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 1,
        blurRadius: 3,
        // offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  alignment: Alignment.center,
  child: const Icon(
    Icons.arrow_back_ios_new,
    color: Colors.white,
  ),
);

Widget notificationButton = Container(
  margin: const EdgeInsets.only(right: 20),
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    border: Border.all(
      color: color_theme.notificationBorder,
    ),
    color: color_theme.notificationWhite,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        // spreadRadius: 1,
        blurRadius: 1,
        // offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  alignment: Alignment.center,
  child: const Icon(
    Icons.notifications_outlined,
    color: color_theme.notificationDark,
  ),
);

const roundedPageDecoration = BoxDecoration(
  color: color_theme.roundedPageColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(40),
    topRight: Radius.circular(40),
  ),
);

Widget divider = Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Divider(
      color: Colors.white.withOpacity(0.9),
      endIndent: 10,
      indent: 10,
      height: 2,
    ));

// TODO when press the button, how to search?
//  TODO This should be function searchBar(onChangedFunction, onSubmitFunction)
Widget searchBar = Padding(
    padding: const EdgeInsets.fromLTRB(20, 17, 20, 15),
    child: CupertinoSearchTextField(
      onChanged: (value) {},
      onSubmitted: (value) {},
      decoration: BoxDecoration(
        color: const Color.fromRGBO(235, 230, 255, 0.4),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(0.7),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      itemSize: 23,
      itemColor: color_theme.buttonDark,
      prefixInsets: const EdgeInsets.only(left: 20),
      suffixInsets: const EdgeInsets.only(right: 20),
      placeholderStyle: TextStyle(
        height: 1.4,
        color: Colors.white.withOpacity(0.6),
      ),
      style: TextStyle(
        height: 1.4,
        color: Colors.white.withOpacity(0.9),
      ),
    ));

Widget avatar(String img, bool online) {
  return Container(
    // the gradient border
    width: 80,
    height: 80,
    alignment: Alignment.center,
    decoration: online
        ? BoxDecoration(
      gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(255, 144, 99, 1),
            Color.fromRGBO(112, 79, 254, 1)
          ]),
      borderRadius: BorderRadius.circular(24),
    )
        : BoxDecoration(
      color: Colors.grey.withOpacity(0.3),
      borderRadius: BorderRadius.circular(24),
    ),
    //头像容器
    child: Container(
      // part of the border
      width: 76,
      height: 76,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        color: color_theme.roundedPageColor,
      ),
      child: Container(
        // the avatar
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(img),
              ))),
    ),
  );
}
Widget avatarForChannel(String img, bool online) {
  return Container(
    // the gradient border
    width: 55,
    height: 55,
    alignment: Alignment.center,
    decoration: online
        ? BoxDecoration(
      gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(255, 144, 99, 1),
            Color.fromRGBO(112, 79, 254, 1)
          ]),
      borderRadius: BorderRadius.circular(15),
    )
        : BoxDecoration(
      color: Colors.grey.withOpacity(0.3),
      borderRadius: BorderRadius.circular(15),
    ),
    //头像容器
    child: Container(
      // part of the border
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color_theme.roundedPageColor,
      ),
      child: Container(
        // the avatar
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(img),
              ))),
    ),
  );
}

AppBar mainPageAppBar(BuildContext context, String headline) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.transparent,
    titleSpacing: 0.0,
    // headline & notification
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Main page Headline
        mainPageHeadline(headline),

        // Notification button
        GestureDetector(
          child: notificationButton,
          onTap: () {
            Navigator.pushNamed(context, noticeViewRoute);
          },
        )
      ],
    ),
  );
}

Widget mainPageHeadline(String headline) {
  return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(headline,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontWeight: FontWeight.bold,
            fontSize: 34,
          )));
}

Widget subpageHeadline(String headline) {
  return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Text(headline,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontWeight: FontWeight.bold,
            fontSize: 28,
          )));
}
