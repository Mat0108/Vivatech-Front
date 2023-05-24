// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'cv/pdf_viewer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test Demo',
      theme: ThemeData(fontFamily: "MuseoSans"),
      home: const PdfUploaderPage(),
    );
  }
}
