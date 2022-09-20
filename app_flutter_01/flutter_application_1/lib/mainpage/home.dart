/**
 * homepage
 */

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage/notice.dart';
import 'package:flutter_application_1/_routing/router.dart';
import 'package:flutter_application_1/_routing/routes.dart';
import 'package:flutter_application_1/Userdata/Homepage_friends_data.dart';
import 'package:flutter_application_1/components/ColorTheme.dart'
    as color_theme;
import 'package:flutter_application_1/components/CustomizedWidget.dart'
    as customized_widget;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List<String> tabs() {
    // TODO get courses list and add
    List<String> ans = [];
    ans.add("Friends");
    ans.add("DECO7381");
    ans.add("DECO7180");
    // final more button
    ans.add("+");
    return ans;
  }

  int current = 0;

  @override
  Widget build(BuildContext context) {
    List<String> courses = tabs();
    return Container(
      decoration: color_theme.backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: customized_widget.mainPageAppBar(context, "Home"),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          // margin: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // the Divider
              customized_widget.divider,

              // tab bar buttons
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: courses.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (index == courses.length - 1) {
                                    Navigator.pushNamed(context, joinCourseMainViewRoute);
                                  } else {
                                    current = index;
                                    // print("current: $current");
                                  }
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 100),
                                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                width: max(13 * courses[index].length + 10, 100),
                                height: 46,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: current == index
                                          ? const Color.fromRGBO(9, 9, 19, 0.15)
                                          : const Color.fromRGBO(9, 9, 19, 0.05),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                    ),
                                  ],
                                  color: current == index
                                      ? color_theme.buttonDark
                                      : const Color.fromRGBO(230, 224, 255, 0.3),
                                  borderRadius: BorderRadius.circular(30),
                                  border: current == index
                                      ? null
                                      : Border.all(
                                      color: const Color.fromRGBO(54, 19, 97, 0.2)),
                                ),
                                child: Center(
                                  child: index == courses.length - 1
                                  ? const Icon(
                                    Icons.add,
                                    color: color_theme.buttonDark,
                                  )
                                  :Text(
                                    courses[index],
                                    style: TextStyle(
                                      fontWeight: current == index
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: current == index
                                          ? Colors.white
                                          : const Color.fromRGBO(108, 95, 188, 0.6),
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            );
                      }),
                ),
              ),

              // Tab page, TODO should pass in the courses[current] to get classmates
              const FriendsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeWeight extends StatelessWidget {
  const _HomeWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color.fromRGBO(243, 241, 255, 1),
              child: const Center(
                child: Text('Above'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              child: const Center(
                child: Text('Below'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
