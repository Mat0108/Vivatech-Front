// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/background.dart';
import 'package:vivatech/components/game/gameContainer.dart';
import 'package:vivatech/components/topNavigation.dart';

class GameLogic extends StatelessWidget {
  bool clickedAnswer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
            content: Column(children: [
      TopNavigationComponent(currentPage: "game-logic"),
      Expanded(
          child: GameContainerComponent(
              content: Column(children: [
        Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 70),
            child: Text("Question 1".toUpperCase(),
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: 100,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset("assets/pages/games/logic/amazon.png"),
            Image.asset("assets/pages/games/logic/amazon.png"),
            Image.asset("assets/pages/games/logic/ayming.png"),
            Image.asset("assets/pages/games/logic/question.png")
          ]),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(20, 70, 20, 10),
            child: Text(
                "Choisissez l’une de ces options pour remplir la case manquante en fonction de l’ordre de la case manquante :",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15, color: Colors.white))),
        Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: clickedAnswer
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 3,
                                    style: BorderStyle.solid)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                  "assets/pages/games/logic/amazon.png"),
                            ))
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                                "assets/pages/games/logic/amazon.png"),
                          ),
                    onTap: () => {clickedAnswer = !clickedAnswer},
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/pages/games/logic/ayming.png"),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/pages/games/logic/ikubator.png"),
                  )
                ]))
      ]))),
    ])));
  }
}
