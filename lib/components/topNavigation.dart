// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';

class TopNavigationComponent extends StatelessWidget {
  final String currentPage;
  final String? image;
  final Widget content;

  const TopNavigationComponent(
      {Key? key, required this.currentPage, this.image, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String textNav = "";
    String baseImagePath = "";
    String imageNav = baseImagePath;

    if (currentPage == "conferences") {
      textNav = "Conférences";
      baseImagePath = "assets/pages/conferences/";

      if (image != null) {
        imageNav = baseImagePath + image!;
      }
    } else if (currentPage == "stands") {
      textNav = "Stands";
      baseImagePath = "assets/pages/stands/";

      if (image != null) {
        imageNav = baseImagePath + image!;
      }
    } else if (currentPage == "pass") {
      textNav = "Mon Pass";
      imageNav = "assets/pages/home/pass.png";
    } else if (currentPage == "cv") {
      textNav = "CV";
      imageNav = "assets/pages/home/cv.png";
    } else if (currentPage == "games") {
      textNav = "Jeux";
      imageNav = "assets/pages/home/game.png";
    } else if (currentPage == "treasure") {
      textNav = "Chasse au trésor";
      imageNav = "assets/pages/games/treasure.png";
    } else if (currentPage == "game-logic") {
      textNav = "Jeu de logique";
      imageNav = "assets/pages/games/logic.png";
    } else if (currentPage == "game-memory") {
      textNav = "Jeu de mémoire";
      imageNav = "assets/pages/games/memoru.png";
    } else if (currentPage == "quiz") {
      textNav = "Quiz";
      imageNav = "assets/pages/games/quiz.png";
    }

    return Column(children: [
      Row(children: [
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
          child: Row(
            children: [
              Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(0, 255, 255, 1),
                    border: Border.all(
                        color: Color.fromRGBO(85, 8, 160, 0.3),
                        width: 3,
                        style: BorderStyle.solid),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(imageNav, fit: BoxFit.contain))),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.7),
                    border: Border.all(
                        color: Color.fromRGBO(0, 255, 255, 1),
                        width: 3,
                        style: BorderStyle.solid)),
                child: Text(textNav,
                    style: TextStyle(
                        color: Color.fromRGBO(85, 8, 160, 0.7),
                        fontSize: 22,
                        fontFamily: "MuseoSans",
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ]),
      content
    ]);
  }
}
