import 'package:flutter/material.dart';
import 'package:front/treasure/stage2.dart';
import 'package:front/treasure/treasure.dart';
import '../color.dart';

const List<double> list = <double>[1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

class TreasureStage1 extends StatefulWidget {
  const TreasureStage1({super.key});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<TreasureStage1> createState() => _TreasureStage1State();
}

class _TreasureStage1State extends State<TreasureStage1> {
  double dropdown1 = list.first;
  double dropdown2 = list.first;
  double dropdown3 = list.first;
  double dropdown4 = list.first;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        width: 390,
        height: 400,
        top: 80,
        child: Container(
            width: 390,
            height: 200,
            child: Column(children: <Widget>[
              Container(
                  width: 390,
                  height: 200,
                  margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      children: [
                        Card("assets/images/tresor/jeu1/logo.png"),
                        Card("assets/images/tresor/jeu1/bnp.png"),
                        Card("assets/images/tresor/jeu1/google.png"),
                        Card("assets/images/tresor/jeu1/poste.png"),
                        Selector(dropdown1, "1"),
                        Selector(dropdown2, "2"),
                        Selector(dropdown3, "3"),
                        Selector(dropdown4, "4"),
                      ])),
              Container(
                  width: 390,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 110,
                        height: 48,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: VivatechColor.purple),
                        child: TextButton(
                          onPressed: () {
                            if (dropdown1 == 5 &&
                                dropdown2 == 1 &&
                                dropdown3 == 7 &&
                                dropdown4 == 4) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TreasurePage(
                                          type: "4",
                                          widget: TreasureStage2())));
                            }
                          },
                          child: const Text("Valider",
                              style: TextStyle(
                                  fontSize: 18, color: VivatechColor.white)),
                        ),
                      ),
                      Container(
                        width: 110,
                        height: 48,
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
                              style: TextStyle(
                                  fontSize: 18, color: VivatechColor.white)),
                        ),
                      )
                    ],
                  ))
            ])));
  }

  Widget Card(String url) {
    return Container(
      decoration: BoxDecoration(
          color: VivatechColor.white,
          border: Border.all(color: VivatechColor.blue, width: 3),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      width: 80,
      height: 160,
      child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(url),
              fit: BoxFit.scaleDown,
            ),
          )),
    );
  }

  Widget Selector(double val, String test) {
    return Theme(
        data: Theme.of(context).copyWith(canvasColor: VivatechColor.blue),
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
          decoration: const BoxDecoration(
              color: VivatechColor.blue,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: DropdownButton<double>(
            value: val,
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
                switch (test) {
                  case "1":
                    dropdown1 = value!;
                    break;
                  case "2":
                    dropdown2 = value!;
                    break;
                  case "3":
                    dropdown3 = value!;
                    break;
                  case "4":
                    dropdown4 = value!;
                    break;
                }
              });
            },
            items: list.map<DropdownMenuItem<double>>((double value) {
              return DropdownMenuItem<double>(
                value: value,
                child: Center(child: Text(value.toString())),
              );
            }).toList(),
          ),
        ));
  }
}
