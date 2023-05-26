import 'package:flutter/material.dart';
import 'package:vivatech/components/color.dart';
import 'package:vivatech/treasure/treasure.dart';

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

class TreasureStage3 extends StatefulWidget {
  const TreasureStage3({super.key});

  @override
  State<TreasureStage3> createState() => _TreasureStage3State();
}

class _TreasureStage3State extends State<TreasureStage3> {
  String text = "Combien avez il de cartes Vivatech ?";
  String text2 = "Dans quel allée nous a mené la carte ?";
  double dropdowndouble = list.first;
  String dropdownstring = listA.first;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 140,
        child: Container(
          width: 400,
          height: 400,
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
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Theme(
                  data: Theme.of(context)
                      .copyWith(canvasColor: VivatechColor.blue),
                  child: Container(
                    width: 70,
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    decoration: const BoxDecoration(
                        color: VivatechColor.blue,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: DropdownButton<double>(
                      value: dropdowndouble,
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
                      onChanged: (double? value) {
                        setState(() {
                          dropdowndouble = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<double>>((double value) {
                        return DropdownMenuItem<double>(
                          value: value,
                          child: Center(child: Text(value.toString())),
                        );
                      }).toList(),
                    ),
                  )),
              Theme(
                  data: Theme.of(context)
                      .copyWith(canvasColor: VivatechColor.blue),
                  child: Container(
                    width: 70,
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    decoration: const BoxDecoration(
                        color: VivatechColor.blue,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: DropdownButton<String>(
                      value: dropdownstring,
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
                          dropdownstring = value!;
                        });
                      },
                      items:
                          listA.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Center(child: Text(value.toString())),
                        );
                      }).toList(),
                    ),
                  )),
              Container(
                width: 110,
                height: 48,
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: VivatechColor.purple),
                child: TextButton(
                  onPressed: () {
                    if ((dropdownstring == "H" || dropdownstring == "J") &&
                        dropdowndouble == 5) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TreasurePage(
                                  type: "6",
                                  widget: Positioned(
                                      top: 40,
                                      right: 30,
                                      child: Container(
                                        width: 170,
                                        height: 170,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/tresor/tresorbig.png"),
                                                fit: BoxFit.cover)),
                                      )))));
                    }
                  },
                  child: const Text("Valider",
                      style:
                          TextStyle(fontSize: 18, color: VivatechColor.white)),
                ),
              ),
              Container(
                width: 110,
                height: 48,
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: VivatechColor.pink),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TreasurePage(
                                  type: "1",
                                )));
                  },
                  child: const Text("Quitter",
                      style:
                          TextStyle(fontSize: 18, color: VivatechColor.white)),
                ),
              )
            ])
          ]),
        ));
  }
}
