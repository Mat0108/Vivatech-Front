// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/background.dart';
import 'package:vivatech/components/game/gameContainerWithCharacter.dart';
import 'package:vivatech/components/topNavigation.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class GameMemoryTutorial extends StatefulWidget {
  @override
  State<GameMemoryTutorial> createState() => _GameMemoryTutorialState();
}

class _GameMemoryTutorialState extends State<GameMemoryTutorial> {
  Map<String, dynamic> _gameData = {};

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/pages/games/memory/game-memory.json');
    final data = await json.decode(response);

    setState(() {
      _gameData = data["tutorial"];
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
      TopNavigationComponent(currentPage: "game-memory"),
      Expanded(
          child: GameContainerWithCharacterComponent(
              gameName: "game-memory",
              tutorial: _gameData["explanations"],
              showNextButton: true,
              game: GameMemory(),
              content: [
            Column(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text(_gameData["example"]["questionNum"].toUpperCase(),
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      _gameData["example"]["images"].length,
                      (index) {
                        return Image.asset(
                            _gameData["example"]["images"][index]);
                      },
                    )),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Text(_gameData["example"]["question"],
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 11, color: Colors.white))),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        _gameData["example"]["multiple-choice"].length,
                        (index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                            _gameData["example"]["multiple-choice"][index]),
                      );
                    }),
                  ))
            ]),
            Column(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text(_gameData["example"]["questionNum"].toUpperCase(),
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      _gameData["example"]["images"].length,
                      (index) {
                        return Image.asset(
                            _gameData["example"]["images"][index]);
                      },
                    )),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Text(_gameData["example"]["question"],
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 11, color: Colors.white))),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      _gameData["example"]["multiple-choice"].length, (index) {
                    return index == 1
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(255, 0, 129, 1),
                                    width: 3,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(13)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(_gameData["example"]
                                  ["multiple-choice"][index]),
                            ))
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                                _gameData["example"]["multiple-choice"][index]),
                          );
                  }),
                ),
              )
            ])
          ]))
    ])));
  }
  
  GameMemory() {}
}
