import 'package:flutter/material.dart';
import 'package:flutter_application_1/_routing/routes.dart';
import 'package:flutter_application_1/_routing/router.dart' as router;


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WorldCitizen',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: landingViewRoute,
    );
  }
}