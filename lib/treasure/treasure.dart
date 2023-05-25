import 'package:flutter/material.dart';
import 'package:vivatech/components/game/gameContainerWithCharacter.dart';
import 'package:vivatech/treasure/stage1.dart';
import '../color.dart';
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
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const TopNavigationComponent(currentPage: "treasure"),
            GameContainerWithCharacterComponent(
                tutorial: [text1, text2],
                showNextButton: true,
                gameName: "treasure",
                game: const TreasureStage1()),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
