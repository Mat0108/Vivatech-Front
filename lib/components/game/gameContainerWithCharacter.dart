// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/game/textTyperAnimation.dart';

class GameContainerWithCharacterComponent extends StatefulWidget {
  final List<dynamic> tutorial;
  final String gameName;
  final List<Widget>? content;
  final bool showNextButton;
  final dynamic game;
  final int? currentIndexTutorial;

  const GameContainerWithCharacterComponent(
      {Key? key,
      required this.tutorial,
      required this.gameName,
      this.content,
      required this.showNextButton,
      this.game,
      this.currentIndexTutorial})
      : super(key: key);

  @override
  State<GameContainerWithCharacterComponent> createState() =>
      _GameContainerWithCharacterComponentState();
}

class _GameContainerWithCharacterComponentState
    extends State<GameContainerWithCharacterComponent> {
  bool showFullText = false;
  int currentIndex = 0;
  int tapCount = 0;
  bool withContent = false;
  String image = "";
  bool tutorialFinished = false;
  int currentIndexContent = 0;
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    if (widget.gameName == "game-logic") {
      image = "assets/pages/games/characters/tania.png";

      if (currentIndex != 0 &&
          currentIndex != 9 &&
          currentIndex != 10 &&
          currentIndex != 11) {
        withContent = true;

        currentIndexContent = 0;
      } else if (currentIndex == 9) {
        withContent = true;

        currentIndexContent = 1;
      } else {
        withContent = false;
      }
    } else if (widget.gameName == "game-memory") {
      image = "assets/pages/games/characters/coumba.png";

      if (currentIndex == 2) {
        setState(() {
          withContent = true;
          currentIndexContent = 0;
        });
      } else if (currentIndex == 3 || currentIndex == 4) {
        setState(() {
          withContent = true;
          currentIndexContent = 1;
        });
      } else if (currentIndex == 5) {
        setState(() {
          withContent = true;
          currentIndexContent = 2;
        });
      } else if (currentIndex == 6) {
        setState(() {
          withContent = true;
          currentIndexContent = 3;
        });
      } else if (currentIndex == 7) {
        setState(() {
          withContent = true;
          currentIndexContent = 4;
        });
      } else if (currentIndex == 8) {
        setState(() {
          withContent = true;
          currentIndexContent = 5;
        });
      } else {
        setState(() {
          withContent = false;
        });
      }
    } else if (widget.gameName == "quiz") {
      image = "assets/pages/games/characters/nihel.png";

      if (currentIndex != 0 && currentIndex != 1 && currentIndex != 4) {
        setState(() {
          withContent = true;
        });
      }
    } else if (widget.gameName == "treasure") {
      image = "assets/pages/games/characters/matthieu.png";

      if (currentIndex != 0 && currentIndex != 1 && currentIndex != 3) {
        setState(() {
          withContent = true;
        });
      }
    }

    return widget.tutorial != null
        ? Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.7),
            ),
            child: Column(children: [
              Padding(
                padding: withContent
                    ? EdgeInsets.fromLTRB(0, 10, 0, 0)
                    : EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        "assets/pages/games/bubble-chat.png",
                        width: withContent ? 350 : 400,
                        height: withContent ? 250 : 300,
                      ),
                    ),
                    Container(
                        alignment: Alignment.topCenter,
                        padding: withContent
                            ? EdgeInsets.fromLTRB(140, 50, 80, 75)
                            : EdgeInsets.fromLTRB(90, 75, 90, 75),
                        child: showFullText
                            ? Text(widget.tutorial[currentIndex],
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w700,
                                ))
                            : TextTyperAnimationComponent(
                                text: widget.tutorial[currentIndex])),
                    if (widget.showNextButton)
                      GestureDetector(
                          child: Padding(
                              padding: withContent
                                  ? EdgeInsets.fromLTRB(300, 140, 0, 0)
                                  : EdgeInsets.fromLTRB(290, 170, 0, 0),
                              child: Container(
                                  width: withContent ? 30 : 40,
                                  height: withContent ? 30 : 40,
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                      "assets/pages/games/next.png"))),
                          onTap: () {
                            tapCount++;

                            if (tapCount == 2) {
                              if (currentIndex + 1 == widget.tutorial.length) {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (BuildContext context,
                                        Animation<double> animation1,
                                        Animation<double> animation2) {
                                      return widget.game;
                                    },
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero,
                                  ),
                                );
                              } else if (currentIndex <
                                  widget.tutorial.length) {
                                currentIndex++;
                                tapCount = 0;

                                print(currentIndex);
                                setState(() {
                                  showFullText = false;
                                });
                              }
                            } else if (tapCount == 1) {
                              setState(() {
                                showFullText = true;
                              });
                            }
                          })
                  ],
                ),
              ),
              Container(
                padding: withContent
                    ? EdgeInsets.fromLTRB(50, 0, 0, 0)
                    : EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child: Image.asset(image,
                    width: withContent ? 110 : 180,
                    height: withContent ? 110 : 180),
              ),
              if (widget.content != null && withContent != false)
                widget.content![currentIndexContent]
            ]))
        : CircularProgressIndicator();
  }
}
