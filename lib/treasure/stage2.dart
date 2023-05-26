import 'package:flutter/material.dart';
import 'package:vivatech/treasure/treasure.dart';
import '../color.dart';
import 'stage3.dart';

const List<String> list = <String>[
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

class TreasureStage2 extends StatefulWidget {
  const TreasureStage2({super.key});

  @override
  State<TreasureStage2> createState() => _TreasureStage2State();
}

class _TreasureStage2State extends State<TreasureStage2> {
  bool showmap = false;
  String dropdown = list.first;

  @override
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
                  left: 0,
                  child: Container(
                    width: 55,
                    height: 55,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        color: VivatechColor.white,
                        border: Border.all(color: VivatechColor.blue, width: 3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(90))),
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
                top: 300,
                child: Container(
                    width: 400,
                    height: 100,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Theme(
                              data: Theme.of(context)
                                  .copyWith(canvasColor: VivatechColor.blue),
                              child: Container(
                                width: 80,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: VivatechColor.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
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
                                  items: list.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child:
                                          Center(child: Text(value.toString())),
                                    );
                                  }).toList(),
                                ),
                              )),
                          Container(
                            width: 110,
                            height: 48,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: VivatechColor.purple),
                            child: TextButton(
                              onPressed: () {
                                if (dropdown == "H" || dropdown == "J") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TreasurePage(
                                                  type: "5",
                                                  widget: TreasureStage3())));
                                }
                              },
                              child: const Text("Valider",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: VivatechColor.white)),
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 48,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: VivatechColor.pink),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TreasurePage(
                                              type: "1",
                                            )));
                              },
                              child: const Text("Quitter",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: VivatechColor.white)),
                            ),
                          )
                        ])))
          ],
        ));
  }
}
