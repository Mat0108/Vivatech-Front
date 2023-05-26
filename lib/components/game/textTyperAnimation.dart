// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TextTyperAnimationComponent extends StatelessWidget {
  final String text;

  const TextTyperAnimationComponent({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TypewriterAnimatedText(
        text,
        textAlign: TextAlign.justify,
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
        speed: const Duration(milliseconds: 120),
      ),
    ], totalRepeatCount: 1, displayFullTextOnTap: true);
  }
}
