import 'package:flutter/material.dart';
import '../components/ResultComponent.dart';
import '../components/background.dart';
import '../components/topNavigation.dart';

class VictoryPage extends StatelessWidget {
  final int score;

  VictoryPage(this.score);

  @override
  Widget build(BuildContext context) {
    return BackgroundComponent(
            content: Column(children: [
      TopNavigationComponent(currentPage: "quiz"),
      ResultComponent(
        ruselt:
            "Félicitations! Vous avez obtenu  ${score} sur 10. À la prochaine !",
        gameName: 'quiz',
        display: true,
      )
    ]));
  }
}
