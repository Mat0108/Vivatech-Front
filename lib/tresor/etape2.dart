import 'package:flutter/material.dart';
import 'package:front/tresor/tresor.dart';
import '../color.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';

const List<double> list = <double>[1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

class TresorEtape2 extends StatefulWidget {
  const TresorEtape2({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<TresorEtape2> createState() => _TresorEtape2();
}

class _TresorEtape2 extends State<TresorEtape2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Container(
          width: 390,
          height: 300,
          margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/carte.png"),
                fit: BoxFit.cover,
              ),
              color: VivatechColor.cyan),
        )
      ],
    ));
  }
}
