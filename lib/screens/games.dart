// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/background.dart';
import 'package:vivatech/components/gamesContainer.dart';
import 'package:vivatech/components/topNavigation.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

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
                    image: "assets/pages/games/memory.png",
                    text: "Jeu de mémoire",
                    gameName: "/jeu-memoire",
                  ),
                  GamesContainerComponent(
                      image: "assets/pages/games/logic.png",
                      text: "Jeu de logique",
                      gameName: "/jeu-logique"),
                  GamesContainerComponent(
                      image: "assets/pages/games/quiz.png",
                      text: "Quiz",
                      gameName: "/quiz"),
                  GamesContainerComponent(
                      image: "assets/pages/games/treasure.png",
                      text: "Chasse au trésor",
                      gameName: "/tresor")
                ],
                indicatorDotHeight: 10.0,
                indicatorDotWidth: 15.0,
                indicatorActiveDotColor: Color.fromRGBO(255, 0, 129, 1),
                indicatorInActiveDotColor: Colors.white,
                indicatorDotSpacing: 30,
                indicatorType: IndicatorType.expandingDots,
                indicatorPosition: IndicatorPosition.bottomCenter,
              )))
    ])));
  }
}
