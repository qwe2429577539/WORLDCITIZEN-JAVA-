/**
 * JoinCourse界面
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ColorTheme.dart' as color_theme;
import 'package:flutter_application_1/components/CustomizedWidget.dart' as customized_widget;
import 'package:flutter_application_1/components/joincourse_components/Department.dart';
import 'package:flutter_application_1/components/joincourse_components/DeptButton.dart';
import 'package:flutter_application_1/components/joincourse_components/CourseCard.dart';

class JoinCourseMainPage extends StatefulWidget {
  const JoinCourseMainPage({Key? key}) : super(key: key);

  @override
  State<JoinCourseMainPage> createState() => _JoinCourseMainPage();
}

class _JoinCourseMainPage extends State<JoinCourseMainPage> {
  // TODO input parameter -- the department
  List<Widget> courses(){
    List<Widget> ans = [];
    // just for demo, TODO get course list and input course code and year
    ans.add(const CourseCard(
        courseCode: "DECO 7381",
        semesterYear: "Semester, 2022")
    );
    ans.add(const CourseCard(
        courseCode: "DECO 7330",
        semesterYear: "Semester, 2021")
    );
    return ans;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // Background color setting for all !!!!!
      decoration: color_theme.backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleSpacing: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Back Button
              GestureDetector(
                child: customized_widget.backButton,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),

              // Subpage Headline
              customized_widget.subpageHeadline("Join New Course"),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // the Divider
            customized_widget.divider,

            // Search bar
            customized_widget.searchBar,

            // 6 Departments
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                    itemCount: departments.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 8,
                      childAspectRatio: 0.95,
                    ),
                    itemBuilder: (context, index) => DeptButton(
                          department: departments[index],
                          press: () { // when press, courses show from the bottom up
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              isDismissible: true,
                              builder: (BuildContext context) {
                                return Container(
                                  constraints: BoxConstraints(maxHeight: size.height * 0.73),
                                  decoration: customized_widget.roundedPageDecoration,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      // TODO pass the courses
                                      children: courses(),
                                    )
                                  ,
                                );
                              },
                            );
                          },
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
