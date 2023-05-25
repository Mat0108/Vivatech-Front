import 'package:flutter/material.dart';
import 'package:vivatech/components/game/gameContainerWithCharacter.dart';
import 'package:vivatech/treasure/stage1.dart';
import '../color.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:vivatech/components/topNavigation.dart';

class TreasureWinPage extends StatelessWidget {
  const TreasureWinPage({super.key});
  Widget build(BuildContext context) {
    String text1 = " Bravo, vous avez trouvé le trésor ! ";

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunni ng build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
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
            const TopNavigationComponent(currentPage: "treasure"),
            GameContainerWithCharacterComponent(
              tutorial: [text1],
              showNextButton: false,
              gameName: "treasure1",
            ),
            Center(
                child: Container(
              width: 170,
              height: 170,
              margin: EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/pages/treasure/tresorbig.png"),
                      fit: BoxFit.cover)),
            ))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
