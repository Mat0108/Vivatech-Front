import 'package:flutter/material.dart';
import 'package:front/utils.dart';
import 'package:front/accueil/accueil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        fontFamily: "MuseoSans",
        primarySwatch: Colors.blue,
      ),
      home: const Scene(),
    );
  }
}
