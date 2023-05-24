// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vivatech/components/background.dart';
import 'package:vivatech/components/game/gameContainer.dart';
import 'package:vivatech/components/game/quitGameContainer.dart';
import 'package:vivatech/components/game/winLoseContainer.dart';
import 'package:vivatech/components/topNavigation.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class GameLogic extends StatefulWidget {
  @override
  State<GameLogic> createState() => _GameLogicState();
}

class _GameLogicState extends State<GameLogic> {
  bool clickedAnswer = false;
  List<dynamic> _gameData = [];
  int currentIndex = 0;
  int resultGame = 0;
  List<dynamic> selectedChoice = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/pages/games/logic/game-logic.json');
    final data = await json.decode(response);

    setState(() {
      _gameData = data["game"];
    });
  }

  @override
  void initState() {
    super.initState();

    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
            content: Column(children: [
      TopNavigationComponent(currentPage: "game-logic"),
      Expanded(
          child: GameContainerComponent(
              content: Column(
        children: [
          Padding(
              padding: currentIndex > 2
                  ? EdgeInsets.fromLTRB(0, 50, 0, 50)
                  : EdgeInsets.fromLTRB(0, 50, 0, 70),
              child: Text(_gameData[currentIndex]["questionNum"],
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
          Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: currentIndex > 2 ? 160 : 90,
              child: Wrap(
                  spacing: 8.0,
                  alignment: currentIndex > 2
                      ? WrapAlignment.start
                      : WrapAlignment.spaceBetween,
                  children: List.generate(
                      _gameData[currentIndex]["images"].length, (indexImages) {
                    return Image.asset(
                      _gameData[currentIndex]["images"][indexImages],
                      width: 70,
                      height: 70,
                    );
                  }))),
          Padding(
              padding: currentIndex > 2
                  ? EdgeInsets.fromLTRB(20, 40, 20, 10)
                  : EdgeInsets.fromLTRB(20, 70, 20, 10),
              child: Text(_gameData[currentIndex]["question"],
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.white))),
          Container(
              width: MediaQuery.of(context).size.width,
              height: currentIndex > 7 ? 145 : 160,
              padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      _gameData[currentIndex]["multiple-choice"].length,
                      (indexChoice) {
                    return GestureDetector(
                      child: Container(
                          decoration: BoxDecoration(
                              border: clickedAnswer &&
                                      selectedChoice.contains(indexChoice)
                                  ? Border.all(
                                      color: Color.fromRGBO(255, 0, 129, 1),
                                      width: 3,
                                      style: BorderStyle.solid,
                                    )
                                  : null,
                              borderRadius: clickedAnswer &&
                                      selectedChoice.contains(indexChoice)
                                  ? BorderRadius.circular(23)
                                  : null),
                          child: Stack(children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(_gameData[currentIndex]
                                  ["multiple-choice"][indexChoice]),
                            ),
                            if (clickedAnswer &&
                                selectedChoice.contains(indexChoice))
                              Padding(
                                  padding: currentIndex > 7
                                      ? EdgeInsets.all(18)
                                      : EdgeInsets.all(20),
                                  child: Container(
                                      width: currentIndex > 7 ? 20 : 30,
                                      height: currentIndex > 7 ? 20 : 30,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color:
                                              Color.fromRGBO(255, 0, 129, 1)),
                                      child: Text(
                                        (selectedChoice.indexOf(indexChoice) +
                                                1)
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )))
                          ])),
                      onTap: () => {
                        setState(() => {
                              if (clickedAnswer &&
                                  selectedChoice.contains(indexChoice))
                                {selectedChoice.remove(indexChoice)}
                              else
                                {
                                  clickedAnswer = true,
                                  selectedChoice.add(indexChoice)
                                }
                            })
                      },
                    );
                  }))),
          GestureDetector(
            child: Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(161, 0, 155, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Valider",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
            onTap: () => {
              print(selectedChoice),
              print(_gameData[currentIndex]["correct-responses"]),
              if (listEquals(
                  selectedChoice, _gameData[currentIndex]["correct-responses"]))
                {
                  setState(() => {
                        clickedAnswer = false,
                        selectedChoice.clear(),
                        currentIndex++,
                        resultGame++
                      })
                }
              else
                {
                  setState(() => {
                        clickedAnswer = false,
                        selectedChoice.clear(),
                        currentIndex++,
                      })
                },
              if (currentIndex == 9)
                {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation1,
                          Animation<double> animation2) {
                        return WinLoseContainerComponent(
                            resultGame: resultGame, image: "game-logic");
                      },
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  )
                }
            },
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(300, 50, 20, 20),
              child: GestureDetector(
                  child: Container(
                      width: 100,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 0, 129, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Quitter",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                  onTap: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog.fullscreen(
                              backgroundColor: Colors.transparent,
                              child: QuitGameContainerComponent(
                                gameName:
                                    'game-logic', // Provide the game name here
                              ),
                            );
                          },
                        )
                      }))
        ],
      ))),
    ])));
  }
}
