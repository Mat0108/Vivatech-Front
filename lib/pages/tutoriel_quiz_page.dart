
import 'package:flutter/material.dart';

import '../components/background.dart';
import '../components/gameQuizContainer.dart';
import '../components/topNavigation.dart';
import '../components/tutorielQuizQuestion.dart';


class TutorialQuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackgroundComponent(
            content: Column(children: [
              TopNavigationComponent(currentPage: "quiz"),
              Expanded(
                  child: GameContainerComponent(gameName: "quiz", tutorial: [
                    "Bonjour ! Bienvenue au quiz de l'événement VivaTech.",
                    "Je suis Nihel et je serai votre guide pour ce quiz interactif.",
                    "Avant de commencer, laisse-moi vous expliquer comment cela fonctionne.",
                    "Nous aurons un total de 10 questions dans ce quiz.",
                    "Pour chaque question, vous verrez 3 choix de réponse.",
                    "Votre mission est de choisir la bonne réponse en cliquant dessus.",
                    "Une fois que vous avez sélectionné votre réponse, cliquez sur le bouton suivant.",
                    "Chaque question ne comporte qu'une seule réponse correcte.",
                    "Faites preuve d'attention et de réflexion pour trouver la bonne réponse.",
                    "Après avoir répondu à une question, cliquez sur le bouton suivant pour passer à la question suivante.",
                    "Êtes-vous prêt à relever le défi ? Alors, commençons le quiz de VivaTech !"
                  ],content: TutorialQuizWidget(questionText: "Quelle entreprise est connue pour ses logiciels de gestion des performances et de l'expérience utilisateur mobile ?", answerOptions: ["Accuver","Amazon","Bnp"],)),)
            ]));
  }
}

