// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/game/textTyperAnimation.dart';

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

  @override
  Widget build(BuildContext context) {
    if (widget.resultGame >= 0 && widget.resultGame < 7) {
      text1 = "Dommage que vous n’avez obtenu que ";
      text2 = "sur 10. Essayez encore votre chance la prochaine fois!";
      text = text1 + widget.resultGame.toString() + text2;
    } else if (widget.resultGame >= 7 && widget.resultGame <= 10) {
      text1 = "Félicitations! Vous avez obtenu ";
      text2 = "sur 10. À la prochaine !";
      text = text1 + widget.resultGame.toString() + text2;
    }

    /*if (widget.image == "game-logic") {
      character = "assets/pages/games/characters/tania.png";
    } else if (widget.image == "game-memory") {
      character = "assets/pages/games/characters/coumba.png";
    } else if (widget.image == "quiz") {
      character = "assets/pages/games/characters/nihel.png";
    } else if (widget.image == "treasure") {
      character = "assets/pages/games/characters/matthieu.png";
    }*/

    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.7),
        ),
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
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Image.asset(widget.image, width: 180, height: 180),
          ),
        ]));
  }
}
