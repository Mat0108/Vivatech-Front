import 'package:flutter/material.dart';
import 'package:front/tresor/tresor.dart';
import '../color.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';

const List<String> list = <String>[
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "J",
  "K",
  "L",
  "M"
];

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
  bool showmap = false;
  String dropdown = list.first;
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 400,
        child: Stack(
          children: <Widget>[
            Positioned(
                width: 160,
                height: 48,
                top: 30,
                left: 180,
                child: Container(
                  width: 160,
                  height: 48,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: VivatechColor.blue),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        showmap = true;
                      });
                    },
                    child: const Text("Afficher la carte",
                        style: TextStyle(
                            fontSize: 18, color: VivatechColor.white)),
                  ),
                )),
            if (showmap)
              Positioned(
                  width: 390,
                  height: 300,
                  top: -20,
                  child: Container(
                    width: 390,
                    height: 300,
                    margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/carte.png"),
                          fit: BoxFit.cover,
                        ),
                        color: VivatechColor.cyan),
                  )),
            if (showmap)
              Positioned(
                  top: 0,
                  left: 30,
                  child: Container(
                    width: 45,
                    height: 45,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        color: VivatechColor.white,
                        border: Border.all(color: VivatechColor.blue, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(90))),
                    child: Ink(
                      child: IconButton(
                          iconSize: 30,
                          icon: const Icon(Icons.close),
                          color: VivatechColor.blue,
                          onPressed: () {
                            setState(() {
                              showmap = false;
                            });
                          }),
                    ),
                  )),
            Positioned(
                child: Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: VivatechColor.blue),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                      decoration: const BoxDecoration(
                          color: VivatechColor.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: DropdownButton<String>(
                        value: dropdown,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 8,
                        isExpanded: true,
                        itemHeight: null,
                        style: const TextStyle(
                          color: VivatechColor.white,
                        ),
                        underline: Container(
                          height: 2,
                          color: VivatechColor.black,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdown = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Center(child: Text(value.toString())),
                          );
                        }).toList(),
                      ),
                    )))
          ],
        ));
  }
}
