/**
 * notification界面
 */

import 'package:flutter/material.dart';





class JoinCourseMainPage extends StatefulWidget {
  const JoinCourseMainPage({Key? key}) : super(key: key);

  @override
  State<JoinCourseMainPage> createState() => _JoinCourseMainPage();
}

class _JoinCourseMainPage extends State<JoinCourseMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('join subpage'),
      ),
      body: Text('joinpage'),
      
    );
  }
}
