import 'package:flutter/material.dart';
import 'package:vivatech/components/background.dart';
import 'package:vivatech/components/game/gameContainerWithCharacter.dart';
import 'package:vivatech/components/topNavigation.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:vivatech/screens/niveaux.dart';

class GameMemoryTutorial extends StatefulWidget {
  const GameMemoryTutorial({Key? key}) : super(key: key);

  @override
  State<GameMemoryTutorial> createState() => _GameMemoryTutorialState();
}

class _GameMemoryTutorialState extends State<GameMemoryTutorial> {
  Map<String, dynamic> _gameData = {};

  Future<void> readJson() async {
    final String response = await rootBundle
        .loadString('assets/pages/games/memory/game-memory.json');
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
        content: Column(
          children: [
            const TopNavigationComponent(currentPage: "game-memory"),
            Expanded(
              child: GameContainerWithCharacterComponent(
                  gameName: "game-memory",
                  tutorial: _gameData["explanations"],
                  showNextButton: true,
                  game: Scene(),
                  content: List.generate(_gameData["images"].length, (index) {
                    return Image.asset(_gameData["images"][index]);
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
