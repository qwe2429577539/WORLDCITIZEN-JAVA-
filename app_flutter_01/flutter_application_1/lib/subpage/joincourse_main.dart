/**
 * JoinCourse界面
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/joincourse_components/Department.dart';
import 'package:flutter_application_1/components/joincourse_components/DeptButton.dart';
import 'package:flutter_application_1/components/joincourse_components/CourseCard.dart';

class JoinCourseMainPage extends StatefulWidget {
  const JoinCourseMainPage({Key? key}) : super(key: key);

  @override
  State<JoinCourseMainPage> createState() => _JoinCourseMainPage();
}

class _JoinCourseMainPage extends State<JoinCourseMainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(188, 169, 255, 1),
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
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: const Color.fromRGBO(108, 95, 188, 1),
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
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),

            // Page Headline
            Container(
                margin: EdgeInsets.only(left: 10),
                child: const Text("Join New Course",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ))),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // the Divider
          const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                color: Colors.black,
                endIndent: 10,
                indent: 10,
                height: 2,
              )),

          // Search bar
          Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 15),
              child: CupertinoSearchTextField(
                onChanged: (value) {},
                onSubmitted: (value) {},
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.7),
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      // offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                itemSize: 23,
                itemColor: const Color.fromRGBO(108, 95, 188, 1),
                prefixInsets: const EdgeInsets.only(left: 20),
                suffixInsets: const EdgeInsets.only(right: 20),
                placeholderStyle: TextStyle(
                  height: 1.5,
                  color: Colors.white.withOpacity(0.5),
                ),
                style: TextStyle(
                  height: 1.5,
                  color: Colors.white.withOpacity(0.7),
                ),
              )),

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
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) => DeptButton(
                        department: departments[index],
                        press: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            isDismissible: true,
                            builder: (BuildContext context) {
                              return Container(
                                constraints: BoxConstraints(maxHeight: size.height * 0.73),
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple[50],
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(35),
                                    topRight: Radius.circular(35),
                                  ),
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      CourseCard(
                                          courseCode: "DECO 7381",
                                          semesterYear: "Semester, 2022")
                                    ],
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
    );
  }
}
