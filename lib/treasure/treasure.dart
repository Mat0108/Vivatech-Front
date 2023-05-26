import 'package:flutter/material.dart';
import 'package:vivatech/components/game/gameContainerWithCharacter.dart';
import 'package:vivatech/treasure/stage1.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:vivatech/components/topNavigation.dart';

class TreasurePage extends StatefulWidget {
  const TreasurePage({super.key});

  @override
  State<TreasurePage> createState() => _TreasurePageState();
}

class _TreasurePageState extends State<TreasurePage> {
  @override
  Widget build(BuildContext context) {
    String text1 =
        "Arghhh ! Bienvenue au jeu de chasse au trésor. Je suis le Captaine Matthieu. Je suis ici pour vous guider pendant la chasse au trésor";
    String text2 =
        "Lors de mon dernier voyage, j'ai transporté vers un lieu inconnu mon trésor. Seriez vous capable de retrouver mon trésor ?";
    return Container(
      height: 800,
      width: 480,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background/fond.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TopNavigationComponent(
                currentPage: "treasure",
                content: GameContainerWithCharacterComponent(
                    tutorial: [text1, text2],
                    showNextButton: true,
                    gameName: "treasure",
                    game: const TreasureStage1())),
          ],
        ),
      ),
    );
  }
}
