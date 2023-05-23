import 'package:flutter/material.dart';

import '../components/VictoryComponent.dart';
import '../components/background.dart';
import '../components/gameContainer.dart';
import '../components/topNavigation.dart';
import '../components/tutorielQuizQuestion.dart';

class VictoryPage extends StatelessWidget {
    final int score;

  VictoryPage( this.score);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
            content: Column(children: [
              TopNavigationComponent(currentPage: "quiz"),
              VictoryComponent(ruselt: "Félicitations! Vous avez obtenu  ${score} sur 10. À la prochaine !", gameName: 'quiz',)

    ])));

  }
}

