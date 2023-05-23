import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/gestures.dart';
// ignore: unused_import
import 'dart:ui';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
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
      home: const Scaffold(
        body: SingleChildScrollView(
          child: Scene(),
        ),
      ),
    );
  }
}
