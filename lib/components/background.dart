// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';

class BackgroundComponent extends StatelessWidget {
  final Widget? content;

  const BackgroundComponent({Key? key, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage("assets/background/bg-gradient-vivatech-2.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: content));
  }
}