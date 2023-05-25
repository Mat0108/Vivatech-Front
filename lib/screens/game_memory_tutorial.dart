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

  late int _currentImageIndex = 0;
  final List<String> _imagePaths = [
    'assets/pages/games/memory/tuto1.png',
    'assets/pages/games/memory/tuto2.png',
    'assets/pages/games/memory/tuto3.png',
    'assets/pages/games/memory/tuto4.png',
    'assets/pages/games/memory/tuto5.png',
    'assets/pages/games/memory/tuto6.png',
    'assets/pages/games/memory/tuto7.png',
    // Ajoutez ici d'autres chemins d'images
  ];

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
                onNextPressed:
                    _nextImage, // Appelle la méthode _nextImage() lorsque le bouton "Next" est pressé
                game: Scene(),
                content: [
                  Image.asset("assets/pages/games/memory/tuto1.png"),
                  Image.asset("assets/pages/games/memory/tuto2.png"),
                  Image.asset("assets/pages/games/memory/tuto3.png"),
                  Image.asset("assets/pages/games/memory/tuto4.png"),
                  Image.asset("assets/pages/games/memory/tuto5.png"),
                  Image.asset("assets/pages/games/memory/tuto6.png"),
                  Image.asset("assets/pages/games/memory/tuto7.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _nextImage() {
    setState(() {
      _currentImageIndex = (_currentImageIndex + 1) % _imagePaths.length;
    });
  }
}
