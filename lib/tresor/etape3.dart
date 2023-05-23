import 'package:flutter/material.dart';
import 'package:front/tresor/tresor.dart';
import '../color.dart';

const List<String> listA = <String>[
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "J",
  "K",
  "L",
  "M"
];
const List<double> list = <double>[1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

class TresorEtape3 extends StatefulWidget {
  const TresorEtape3({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<TresorEtape3> createState() => _TresorEtape3();
}

class _TresorEtape3 extends State<TresorEtape3> {
  @override
  String text = "Combien avez il de cartes Vivatech ?";
  String text2 = "Dans quel allée nous a mené la carte ?";
  double dropdowndouble = list.first;
  String dropdownstring = listA.first;
  Widget build(BuildContext context) {
    return Positioned(
        top: 140,
        child: Container(
          child: Column(children: [
            Container(
              width: 400,
              height: 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/tresor/papier.png"),
                      fit: BoxFit.cover)),
              child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Center(
                      child: Column(children: [
                    Text(text,
                        style: const TextStyle(
                            fontSize: 18, color: VivatechColor.black)),
                    Text(text2,
                        style: const TextStyle(
                            fontSize: 18, color: VivatechColor.black)),
                  ]))),
            ),
          ]),
        ));
  }
}
