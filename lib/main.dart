import 'package:flutter/material.dart';
import 'package:vivatech/screens/pass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'VivaTech',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.white,
            fontFamily: 'MuseoSans'),
        home: Pass(),
        initialRoute: '/',
        routes: {
          '/pass': (context) => Pass(),
        });
  }
}
