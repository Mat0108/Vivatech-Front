import 'package:flutter/material.dart';
import 'package:vivatech/treasure/stage1.dart';
import 'package:vivatech/treasure/stage2.dart';
import '../color.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';

class TreasurePage extends StatefulWidget {
  const TreasurePage({super.key, required this.type, this.widget});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String type;
  final Widget? widget;

  @override
  State<TreasurePage> createState() => _TreasurePageState();
}

class _TreasurePageState extends State<TreasurePage> {
  @override
  Widget build(BuildContext context) {
    String text1 = "";
    String text2 = "";
    String text3 = "";
    String text4 = "";
    String text5 = "";
    String text6 = "";
    bool showbutton = false;
    String nexttype = "1";
    Widget localwidget = Container();
    bool showwidget = false;
    switch (widget.type) {
      case "1":
        text1 = "Arghhh ! Bienvenue au jeu";
        text2 = "de chasse au trésor. Je suis";
        text3 = "le Captaine Matthieu. Je suis";
        text4 = "ici pour vous guider pendant ";
        text5 = "la chasse au trésor";
        showbutton = true;
        nexttype = "2";
        break;
      case "2":
        text1 = "Lors de mon dernier voyage,";
        text2 = "j'ai transporté vers un lieu";
        text3 = "inconnu mon trésor. ";
        text4 = "Seriez vous capable de retrouver ";
        text5 = "mon trésor ?";
        showbutton = true;
        nexttype = "3";
        localwidget = const TreasureStage1();
        break;
      case "3":
        text1 = "Pour proteger ma carte  ";
        text2 = "au trésor, je l'ai protégé ";
        text3 = "avec un code. ";
        text4 = "Compte le nombre de ses 4 ";
        text5 = "cartes dans l'evenement pour ";
        text6 = "trouver le code !";
        showbutton = false;
        showwidget = true;
        break;
      case "4":
        text1 = "Grace à la carte, nous savons  ";
        text2 = "où se trouve a peu pres la derniere";
        text3 = "étape. Serai tu capables de trouver ";
        text4 = "l'allée du stand La Poste Groupe ";
        text5 = "";
        text6 = "";
        showbutton = false;
        showwidget = true;
        break;
      case "5":
        text1 = "Nous sommes devant le coffre,";
        text2 = "mais celui ci est protégé par un ";
        text3 = "cadenas. à coté du coffre ";
        text4 = "nous avons trouvé ce papier ";
        text5 = "";
        text6 = "";
        showbutton = false;
        showwidget = true;
        break;
      case "6":
        text1 = "Bravo, vous avez trouvé le ";
        text2 = "trésor ! ";
        text3 = "";
        text4 = "";
        text5 = "";
        text6 = "";
        showbutton = false;
        showwidget = true;
        break;
    }
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunni ng build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
      height: 800,
      width: 480,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fond.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 160,
                width: 430,
                margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          color: VivatechColor.pink,
                          borderRadius: BorderRadius.all(Radius.circular(90)),
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/tresor/tresor.png"),
                              fit: BoxFit.scaleDown)),
                    ),
                    Container(
                        height: 70.0,
                        width: 270.0,
                        margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(45),
                                    bottomRight: Radius.circular(45)),
                                border: Border.all(
                                    color: VivatechColor.pink, width: 3)),
                            child: const Center(
                                child: Text('Chasse au trésor',
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: VivatechColor.purple))))),
                  ],
                )),
            Container(
              width: 248,
              height: 180,
              margin: const EdgeInsets.fromLTRB(80, 0, 0, 0),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/tresor/textbox.png"),
                      fit: BoxFit.fill)),
              child: Container(
                width: 220,
                height: 160,
                margin: const EdgeInsets.fromLTRB(5, 15, 0, 0),
                child: Column(children: [
                  Text(text1,
                      style: const TextStyle(
                          fontSize: 14, color: VivatechColor.black)),
                  Text(text2,
                      style: const TextStyle(
                          fontSize: 14, color: VivatechColor.black)),
                  Text(text3,
                      style: const TextStyle(
                          fontSize: 14, color: VivatechColor.black)),
                  Text(text4,
                      style: const TextStyle(
                          fontSize: 14, color: VivatechColor.black)),
                  Text(text5,
                      style: const TextStyle(
                          fontSize: 14, color: VivatechColor.black)),
                  Text(text6,
                      style: const TextStyle(
                          fontSize: 14, color: VivatechColor.black)),
                  if (showbutton)
                    Container(
                        alignment: Alignment.topRight,
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.topCenter,
                          decoration: const BoxDecoration(
                              color: VivatechColor.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(90))),
                          child: Ink(
                            child: IconButton(
                                iconSize: 15,
                                icon: const Icon(Icons.arrow_forward_ios),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TreasurePage(
                                                type: nexttype,
                                                widget: localwidget,
                                              )));
                                }),
                          ),
                        ))
                ]),
              ),
            ),
            Container(
                height: 400,
                width: 400,
                child: Stack(children: [
                  Container(
                      width: 400,
                      height: 100,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Container(
                          width: 160,
                          height: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/tresor/captain.png"),
                                  fit: BoxFit.scaleDown)))),
                  if (showwidget) widget.widget!
                ]))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
