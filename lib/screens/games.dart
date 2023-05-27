// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/background.dart';
import 'package:vivatech/components/game/gamesContainer.dart';
import 'package:vivatech/components/menuComponent.dart';
import 'package:vivatech/components/topNavigation.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:vivatech/screens/game_logic_tutorial.dart';
import 'package:vivatech/screens/game_memory_tutorial.dart';
import 'package:vivatech/screens/tutoriel_quiz_page.dart';
import 'package:vivatech/treasure/treasure.dart';

class Games extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
            content: Column(children: [
      TopNavigationComponent(currentPage: "games"),
      Expanded(
          child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 80),
              child: OnBoardingAnimation(
                controller: PageController(initialPage: 0),
                pages: [
                  GamesContainerComponent(
                      image: "assets/pages/games/logic.png",
                      text: "Jeu de logique",
                      gameName: GameLogicTutorial()),
                  GamesContainerComponent(
                    image: "assets/pages/games/memory.png",
                    text: "Jeu de mémoire",
                    gameName: GameMemoryTutorial(),
                  ),
                  GamesContainerComponent(
                      image: "assets/pages/games/quiz.png",
                      text: "Quiz",
                      gameName: TutorialQuizPage()),
                  GamesContainerComponent(
                      image: "assets/pages/games/treasure.png",
                      text: "Chasse au trésor",
                      gameName: TreasurePage())
                ],
                indicatorDotHeight: 10.0,
                indicatorDotWidth: 15.0,
                indicatorActiveDotColor: Color.fromRGBO(255, 0, 129, 1),
                indicatorInActiveDotColor: Colors.white,
                indicatorDotSpacing: 30,
                indicatorType: IndicatorType.expandingDots,
                indicatorPosition: IndicatorPosition.bottomCenter,
              ))),
      const MenuComponent()
    ])));
  }
}
