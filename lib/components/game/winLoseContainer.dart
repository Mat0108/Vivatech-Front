// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/game/textTyperAnimation.dart';

import '../background.dart';
import '../topNavigation.dart';
import 'gameContainer.dart';

class WinLoseContainerComponent extends StatefulWidget {
  final int resultGame;
  final String image;

  const WinLoseContainerComponent(
      {Key? key, required this.resultGame, required this.image})
      : super(key: key);

  @override
  State<WinLoseContainerComponent> createState() =>
      _WinLoseCContainerComponentState();
}

class _WinLoseCContainerComponentState
    extends State<WinLoseContainerComponent> {
  String text = "";
  String text1 = "";
  String text2 = "";
  bool showFullText = false;
  String character = "";

  @override
  Widget build(BuildContext context) {
    if (widget.resultGame >= 0 && widget.resultGame < 7) {
      text1 = "Dommage que vous n’avez obtenu que ";
      text2 = " sur 10. Essayez encore votre chance la prochaine fois!";
      text = text1 + widget.resultGame.toString() + text2;
    } else if (widget.resultGame >= 7 && widget.resultGame <= 10) {
      text1 = "Félicitations! Vous avez obtenu ";
      text2 = " sur 10. À la prochaine !";
      text = text1 + widget.resultGame.toString() + text2;
    }

    if (widget.image == "game-logic") {
      character = "assets/pages/games/characters/tania.png";
    } else if (widget.image == "game-memory") {
      character = "assets/pages/games/characters/coumba.png";
    } else if (widget.image == "quiz") {
      character = "assets/pages/games/characters/nihel.png";
    } else if (widget.image == "treasure") {
      character = "assets/pages/games/characters/matthieu.png";
    }

    return Scaffold(
        body: BackgroundComponent(
            content: Column(children: [
      TopNavigationComponent(currentPage: "game-logic"),
      Expanded(
          child: GameContainerComponent(
              content: Container(
                  child: Column(children: [
        Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      "assets/pages/games/bubble-chat.png",
                      width: 400,
                      height: 300,
                    ),
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.fromLTRB(90, 75, 90, 75),
                      child: showFullText
                          ? Text(text,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 13.5,
                                fontWeight: FontWeight.w700,
                              ))
                          : TextTyperAnimationComponent(text: text)),
                ],
              ),
            )),
        Container(
          alignment: Alignment.centerLeft,
          child: Image.asset(character, width: 180, height: 180),
        ),
        GestureDetector(
          child: Padding(
            padding: EdgeInsets.fromLTRB(250, 0, 0, 0),
            child: Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 0, 129, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Text("Quitter",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white))),
          ),
          onTap: () {
            Navigator.pushNamed(context, "/jeux");
          },
        )
      ]))))
    ])));
  }
}