// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/background.dart';
import 'package:vivatech/components/game/gameContainerWithCharacter.dart';
import 'package:vivatech/components/topNavigation.dart';
import 'package:vivatech/screens/game_logic.dart';

class GameLogicTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
            content: Column(children: [
      TopNavigationComponent(currentPage: "game-logic"),
      Expanded(
          child: GameContainerWithCharacterComponent(
              gameName: "game-logic",
              tutorial: [
                'Bonjour! Bienvenue au jeu de la mémoire. Je suis Tania. Je suis ici pour vous guider avant commencer de jouer le jeu',
                'Tout d’abord, vous verrez une question similaire à la question ci-dessous avec quelques images et une ou plusieurs cases manquantes.',
                'Votre mission est de remplir cette case manquante en choisissant l’une des options.',
                'Comme vous pouvez le voir la première boîte est Google, suivie par La Poste et un autre La Poste.',
                'Logiquement, la première option, Orange n’est pas la bonne réponse parce que dans la question il n’y a pas Orange qui est utilisé.',
                'La réponse est donc la deuxième ou la troisième option. Pour savoir quelle est la bonne réponse, nous devrons voir l’ordre des images.',
                'Comme vous pouvez le voir, Google est la première commande.',
                'Puis nous avons La Poste sur la deuxième et la troisième commande et il va continuer en boucle avec la même commande à chaque fois.',
                'Cela signifie que la réponse appropriée à cette question est Google. Pour simplifier, nous dirons Google est 1 et La Poste, 2.',
                'Ainsi, l’ordre sera : 1 - 2 - 2 - 1',
                'Il y aura 10 questions par jeu et le niveau de difficulté pour chaque question sera plus élevé que la question précédente.',
                'Donc, puisque j’ai déjà tout expliqué. Vous pouvez maintenant commencer votre mission. Bonne chance!'
              ],
              showNextButton: true,
              game: GameLogic(),
              content: [
                Column(children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text("Question 1".toUpperCase(),
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/pages/games/logic/amazon.png"),
                          Image.asset("assets/pages/games/logic/amazon.png"),
                          Image.asset("assets/pages/games/logic/ayming.png"),
                          Image.asset("assets/pages/games/logic/question.png")
                        ]),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Text(
                          "Choisissez l’une de ces options pour remplir la case manquante en fonction de l’ordre de la case manquante :",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 11, color: Colors.white))),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                                "assets/pages/games/logic/amazon.png"),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                                "assets/pages/games/logic/ayming.png"),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                                "assets/pages/games/logic/ikubator.png"),
                          )
                        ]),
                  )
                ]),
                Column(children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text("Question 1".toUpperCase(),
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/pages/games/logic/amazon.png"),
                          Image.asset("assets/pages/games/logic/amazon.png"),
                          Image.asset("assets/pages/games/logic/ayming.png"),
                          Image.asset("assets/pages/games/logic/question.png")
                        ]),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Text(
                          "Choisissez l’une de ces options pour remplir la case manquante en fonction de l’ordre de la case manquante :",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 11, color: Colors.white))),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                                "assets/pages/games/logic/amazon.png"),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(255, 0, 129, 1),
                                      width: 3,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(13)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                    "assets/pages/games/logic/amazon.png"),
                              )),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                                "assets/pages/games/logic/ikubator.png"),
                          )
                        ]),
                  )
                ])
              ]))
    ])));
  }
}
