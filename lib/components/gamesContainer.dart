// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';

class GamesContainerComponent extends StatelessWidget {
  final String text;
  final String image;
  final String gameName;

  const GamesContainerComponent(
      {Key? key,
      required this.image,
      required this.text,
      required this.gameName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.7),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Padding(
            padding: EdgeInsets.all(11.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(image),
                  Text(text,
                      style: TextStyle(
                          fontSize: 32,
                          color: Color.fromRGBO(85, 8, 160, 1),
                          fontWeight: FontWeight.w700)),
                  GestureDetector(
                    child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 0, 129, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child: Text('Joueur',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                        )),
                    onTap: () => {Navigator.pushNamed(context, gameName)},
                  )
                ])));
  }
}
