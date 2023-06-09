import 'package:flutter/material.dart';
import 'package:vivatech/components/color.dart';
import 'package:vivatech/components/game/gameContainerWithCharacter.dart';
import 'package:vivatech/components/game/quitGameContainer.dart';
import 'package:vivatech/components/topNavigation.dart';
import 'package:vivatech/treasure/treasure.dart';
import 'package:vivatech/treasure/treasurewin.dart';

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
  String text3 =
      "Nous sommes devant le coffre mais celui ci est protégé par un cadenas. à coté du coffre nous avons trouvé ce papier ";
  bool showquit = false;
  Widget build(BuildContext context) {
    return Container(
        height: 800,
        width: 480,
        decoration: const BoxDecoration(
          color: VivatechColor.white,
          image: DecorationImage(
            image: AssetImage("assets/background/fond.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Stack(children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            const TopNavigationComponent(currentPage: "treasure"),
            GameContainerWithCharacterComponent(
              tutorial: [text3],
              showNextButton: false,
              gameName: "treasure1",
              // game: const TreasureStage2()
            ),
            Container(
              width: 400,
              height: 100,
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage("assets/pages/treasure/papier.png"),
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
                              builder: (context) => const TreasureWinPage()));
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
                    setState(() {
                      showquit = true;
                    });
                  },
                  child: const Text("Quitter",
                      style:
                          TextStyle(fontSize: 18, color: VivatechColor.white)),
                ),
              )
            ])
          ]),
          if (showquit)
            Positioned(
                bottom: 0,
                child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                    ),
                    child:
                        const QuitGameContainerComponent(gameName: "treasure")))
        ])));
  }
}
