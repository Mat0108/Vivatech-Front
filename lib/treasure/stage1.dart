import 'package:flutter/material.dart';
import 'package:vivatech/components/game/gameContainerWithCharacter.dart';
import 'package:vivatech/components/game/quitGameContainer.dart';
import 'package:vivatech/components/topNavigation.dart';
import 'package:vivatech/treasure/stage2.dart';
import '../color.dart';

const List<double> list = <double>[1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

class TreasureStage1 extends StatefulWidget {
  const TreasureStage1({super.key});

  @override
  State<TreasureStage1> createState() => _TreasureStage1State();
}

class _TreasureStage1State extends State<TreasureStage1> {
  double dropdown1 = list.first;
  double dropdown2 = list.first;
  double dropdown3 = list.first;
  double dropdown4 = list.first;
  String text =
      "Pour proteger ma carte  au trésor, je l'ai protégé avec un code. Compte le nombre de ses 4 cartes dans l'evenement pour trouver le code !";
  bool showquit = false;
  @override
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const TopNavigationComponent(currentPage: "treasure"),
                GameContainerWithCharacterComponent(
                    tutorial: [text],
                    showNextButton: false,
                    gameName: "treasure1",
                    game: const TreasureStage2()),
                Container(
                  height: 80,
                  width: 390,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        card("assets/pages/treasure/jeu1/logo.png"),
                        card("assets/pages/treasure/jeu1/bnp.png"),
                        card("assets/pages/treasure/jeu1/google.png"),
                        card("assets/pages/treasure/jeu1/poste.png")
                      ]),
                ),
                SizedBox(
                  height: 80,
                  width: 390,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Selector(dropdown1, "1"),
                        Selector(dropdown2, "2"),
                        Selector(dropdown3, "3"),
                        Selector(dropdown4, "4")
                      ]),
                ),
                Container(
                    width: 390,
                    height: 80,
                    child: Column(children: <Widget>[
                      Container(
                          width: 390,
                          height: 60,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 110,
                                height: 48,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: VivatechColor.purple),
                                child: TextButton(
                                  onPressed: () {
                                    if (dropdown1 == 1 &&
                                        dropdown2 == 1 &&
                                        dropdown3 == 1 &&
                                        dropdown4 == 1) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const TreasureStage2()));
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
                                    setState(() {
                                      showquit = true;
                                    });
                                  },
                                  child: const Text("Quitter",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: VivatechColor.white)),
                                ),
                              ),
                            ],
                          ))
                    ]))
              ],
            ),
            if (showquit)
              Positioned(
                  bottom: 0,
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                      child: const QuitGameContainerComponent(
                          gameName: "treasure")))
          ]),
          // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }

  Widget card(String url) {
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
          width: 80,
          height: 40,
          margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
          decoration: const BoxDecoration(
              color: VivatechColor.blue,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: DropdownButton<double>(
            value: val,
            icon: const Icon(Icons.arrow_downward),
            elevation: 8,
            isExpanded: true,
            style: const TextStyle(
              color: VivatechColor.white,
            ),
            underline: Container(
              height: 2,
              color: VivatechColor.blue,
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
