import 'package:flutter/material.dart';
import '../components/VictoryComponent.dart';
import '../components/background.dart';
import '../components/topNavigation.dart';

class DefeatPage extends StatelessWidget {
  final int score;

  DefeatPage(this.score);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
            content: Column(children: [
      TopNavigationComponent(currentPage: "quiz"),
      VictoryComponent(
        ruselt:
            "Dommage que vous n’avez obtenu que  ${score} sur 10. Essayez encore votre chance la prochaine fois! ",
        gameName: 'quiz',
        display: false,
      )
    ])));
  }
}
