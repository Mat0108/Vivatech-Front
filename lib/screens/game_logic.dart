// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/background.dart';
import 'package:vivatech/components/gameContainer.dart';
import 'package:vivatech/components/topNavigation.dart';

class GameLogic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
            content: Column(children: [
      TopNavigationComponent(currentPage: "game-logic"),
      Expanded(
          child: GameContainerComponent(gameName: "game-logic", tutorial: [
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
      ]))
    ])));
  }
}
