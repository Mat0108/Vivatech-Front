import 'package:flutter/material.dart';
import '../components/ResultComponent.dart';
import '../components/background.dart';
import '../components/topNavigation.dart';

class DefeatPage extends StatelessWidget {
  final int score;

  DefeatPage(this.score);

  @override
  Widget build(BuildContext context) {
    return BackgroundComponent(
        content: Column(children: [
      TopNavigationComponent(currentPage: "quiz"),
      ResultComponent(
        ruselt:
            "Dommage que vous n’avez obtenu que  ${score} sur 10. Essayez encore votre chance la prochaine fois! ",
        gameName: 'quiz',
        display: false,
      )
    ]));
  }
}
