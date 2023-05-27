import 'package:flutter/material.dart';
import 'package:vivatech/components/game/gameContainerWithCharacter.dart';
import 'package:vivatech/components/topNavigation.dart';

class TreasureWinPage extends StatelessWidget {
  const TreasureWinPage({super.key});
  Widget build(BuildContext context) {
    String text1 = " Bravo, vous avez trouvé le trésor ! ";

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
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/pages/treasure/tresorbig.png"),
                      fit: BoxFit.cover)),
            ))
          ],
        ),
      ),
    );
  }
}
