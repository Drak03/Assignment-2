import 'package:assignment_2/screens/detail.dart';
import 'package:assignment_2/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Home.route,
      routes: {
        Home.route: (context) => Home(),
        DetailScreen.route: (context) => DetailScreen()
      },
    );
  }
}
