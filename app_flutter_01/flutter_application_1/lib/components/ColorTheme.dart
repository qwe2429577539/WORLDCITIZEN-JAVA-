import 'package:flutter/material.dart';

const backgroundColor = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
      Color.fromRGBO(216, 135, 255, 1),
      Color.fromRGBO(139, 93, 254, 1)
    ],
        stops: [
      0.2,
      0.7
    ]));

const buttonDark = Color.fromRGBO(108, 95, 188, 1);
const notificationDark = Color.fromRGBO(54, 19, 97, 1);
const notificationWhite = Color.fromRGBO(238, 234, 250, 0.7);
const notificationBorder = Color.fromRGBO(75, 38, 118, 0.35);
const roundedPageColor = Color.fromRGBO(243, 241, 255, 1);
const tagColor = Color.fromRGBO(136, 121, 208, 1);
const tagShadow = Color.fromRGBO(136, 121, 208, 0.4);
const topicImgBG = Color.fromRGBO(174, 145, 226, 1);

