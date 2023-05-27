// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';

class QuitGameContainerComponent extends StatefulWidget {
  final String gameName;

  const QuitGameContainerComponent({Key? key, required this.gameName})
      : super(key: key);

  @override
  State<QuitGameContainerComponent> createState() =>
      _QuitGameContainerComponentState();
}

class _QuitGameContainerComponentState
    extends State<QuitGameContainerComponent> {
  List text = [
    "Votre progression ne sera pas sauvegardée. Êtes-vous sûr de vouloir quitter le jeu ?",
    "D'accord à la prochaine !"
  ];
  int currentIndex = 0;
  bool closePopin = false;
  String character = "";

  @override
  Widget build(BuildContext context) {
    if (widget.gameName == "game-logic") {
      character = "assets/pages/games/characters/tania.png";
    } else if (widget.gameName == "game-memory") {
      character = "assets/pages/games/characters/coumba.png";
    } else if (widget.gameName == "quiz") {
      character = "assets/pages/games/characters/nihel.png";
    } else if (widget.gameName == "treasure") {
      character = "assets/pages/games/characters/matthieu.png";
    }

    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 70),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      "assets/pages/games/bubble-chat.png",
                      width: 400,
                      height: 300,
                    ),
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.fromLTRB(140, 75, 90, 75),
                      child: Text(text[currentIndex],
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w700,
                          ))),
                  Row(
                    children: [
                      GestureDetector(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(160, 160, 0, 0),
                              child: Container(
                                  width: 100,
                                  height: 40,
                                  alignment: Alignment.topRight,
                                  child: Row(children: [
                                    Image.asset("assets/pages/games/oui.png",
                                        width: 40, height: 40),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(15, 0, 0, 0),
                                        child: Text("Oui",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black)))
                                  ]))),
                          onTap: () {
                            setState(() {
                              if (currentIndex == 1) {
                                Navigator.pushNamed(context, "/jeux");
                              }
                              currentIndex++;
                            });
                          }),
                      GestureDetector(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(40, 160, 0, 0),
                              child: Container(
                                  width: 100,
                                  height: 40,
                                  alignment: Alignment.topRight,
                                  child: Row(children: [
                                    Image.asset("assets/pages/games/non.png",
                                        width: 40, height: 40),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(15, 0, 0, 0),
                                        child: Text("Non",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black)))
                                  ]))),
                          onTap: () {
                            Navigator.pop(context, "Non");
                          })
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.bottomLeft,
                child: Image.asset(character, width: 180, height: 180),
              )
            ])));
  }
}
