// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/game/textTyperAnimation.dart';
import 'package:vivatech/screens/game_quiz_page.dart';

class GameContainerComponent extends StatefulWidget {
  final List<String> tutorial;
  final String gameName;
  final Widget? content;

  const GameContainerComponent(
      {Key? key, required this.tutorial, required this.gameName, this.content})
      : super(key: key);

  @override
  State<GameContainerComponent> createState() => _GameContainerComponentState();
}

class _GameContainerComponentState extends State<GameContainerComponent> {
  bool showFullText = false;
  int currentIndex = 0;
  int tapCount = 0;
  bool withContent = false;

  @override
  Widget build(BuildContext context) {
    var image = "";

    if (widget.gameName == "quiz") {
      image = "assets/pages/games/characters/nihel.png";
    }

    return Expanded(
      child: SingleChildScrollView(
          child: Container(
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
                              currentIndex++;
                              tapCount = 0;

                              setState(() {
                                showFullText = false;
                              });
                            } else if (tapCount == 1) {
                              setState(() {
                                showFullText = true;
                              });

                              print(currentIndex);
                            }
                            if (currentIndex == widget.tutorial.length - 1) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuizScreen(),
                                  ));
                            }
                          })
                    ],
                  ),
                ),
                Container(
                  padding: withContent
                      ? EdgeInsets.fromLTRB(30, 0, 0, 0)
                      : EdgeInsets.fromLTRB(0, 0, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Image.asset(image,
                      width: withContent ? 120 : 180,
                      height: withContent ? 120 : 180),
                ),
                if (widget.content != null) widget.content!
              ]))),
    );
  }
}
