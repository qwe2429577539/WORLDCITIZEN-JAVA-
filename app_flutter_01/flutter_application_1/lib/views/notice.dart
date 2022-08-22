import 'package:flutter/material.dart';





class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePage();
}

class _NoticePage extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notice Sample'),
      ),
      body: Text('notice'),
      
    );
  }
}
