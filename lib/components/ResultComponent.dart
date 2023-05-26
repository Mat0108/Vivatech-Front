import 'package:flutter/material.dart';

class ResultComponent extends StatefulWidget {
  final String ruselt;
  final String gameName;
  final bool display;

  const ResultComponent(
      {Key? key,
      required this.ruselt,
      required this.gameName,
      required this.display})
      : super(key: key);

  @override
  State<ResultComponent> createState() => _ResultComponent();
}

class _ResultComponent extends State<ResultComponent> {
  bool showFullText = false;
  int currentIndex = 0;
  int tapCount = 0;
  bool withContent = false;

  @override
  Widget build(BuildContext context) {
    var image = "";

    if (widget.gameName == "game-logic") {
      image = "assets/pages/games/characters/tania.png";

      if (currentIndex != 0) {
        setState(() {
          withContent = true;
        });
      }
    } else if (widget.gameName == "game-memory") {
      image = "assets/pages/games/characters/coumba.png";
    } else if (widget.gameName == "quiz") {
      image = "assets/pages/games/characters/nihel.png";
    } else if (widget.gameName == "treasure") {
      image = "assets/pages/games/characters/matthieu.png";
    }

    return Expanded(
      child: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: widget.display
                    ? const DecorationImage(
                        image: AssetImage("assets/background/victoire.png"),
                        fit: BoxFit.fitWidth,
                      )
                    : null,
                color: const Color.fromRGBO(0, 0, 0, 0.7),
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
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
                          padding: const EdgeInsets.fromLTRB(90, 75, 90, 75),
                          child: Text(widget.ruselt,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18.5,
                                fontWeight: FontWeight.w900,
                              ))),
                    ],
                  ),
                ),
                Container(
                  padding: withContent
                      ? const EdgeInsets.fromLTRB(30, 0, 0, 0)
                      : const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Image.asset(image, width: 180, height: 180),
                ),
              ]))),
    );
  }
}
