import 'package:flutter/material.dart';
import 'package:front/tresor/etape2.dart';
import 'package:front/tresor/tresor.dart';
import '../color.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';

const List<double> list = <double>[1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

class TresorEtape1 extends StatefulWidget {
  const TresorEtape1({super.key});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<TresorEtape1> createState() => _TresorEtape1();
}

class _TresorEtape1 extends State<TresorEtape1> {
  double dropdown1 = list.first;
  double dropdown2 = list.first;
  double dropdown3 = list.first;
  double dropdown4 = list.first;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 340,
        child: Column(children: <Widget>[
          Container(
              width: 390,
              height: 180,
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: GridView
                  .count(crossAxisCount: 4, crossAxisSpacing: 10, children: [
                Container(
                  decoration: BoxDecoration(
                      color: VivatechColor.white,
                      border: Border.all(color: VivatechColor.blue, width: 3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  width: 80,
                  height: 160,
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/tresor/jeu1/logo.png"),
                          fit: BoxFit.scaleDown,
                        ),
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: VivatechColor.white,
                      border: Border.all(color: VivatechColor.blue, width: 3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  width: 80,
                  height: 160,
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/tresor/jeu1/bnp.png"),
                          fit: BoxFit.scaleDown,
                        ),
                      )),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: VivatechColor.white,
                        border: Border.all(color: VivatechColor.blue, width: 3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    width: 80,
                    height: 160,
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/tresor/jeu1/google.png"),
                            fit: BoxFit.scaleDown,
                          ),
                        ))),
                Container(
                  decoration: BoxDecoration(
                      color: VivatechColor.white,
                      border: Border.all(color: VivatechColor.blue, width: 3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  width: 80,
                  height: 160,
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/tresor/jeu1/poste.png"),
                          fit: BoxFit.scaleDown,
                        ),
                      )),
                ),
                Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: VivatechColor.blue),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                      decoration: const BoxDecoration(
                          color: VivatechColor.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: DropdownButton<double>(
                        value: dropdown1,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 8,
                        isExpanded: true,
                        itemHeight: null,
                        style: const TextStyle(
                          color: VivatechColor.white,
                        ),
                        underline: Container(
                          height: 2,
                          color: VivatechColor.black,
                        ),
                        onChanged: (double? value) {
                          setState(() {
                            dropdown1 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<double>>((double value) {
                          return DropdownMenuItem<double>(
                            value: value,
                            child: Center(child: Text(value.toString())),
                          );
                        }).toList(),
                      ),
                    )),
                Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: VivatechColor.blue),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                      decoration: const BoxDecoration(
                          color: VivatechColor.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: DropdownButton<double>(
                        value: dropdown2,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 8,
                        isExpanded: true,
                        itemHeight: null,
                        style: const TextStyle(
                          color: VivatechColor.white,
                        ),
                        underline: Container(
                          height: 2,
                          color: VivatechColor.black,
                        ),
                        onChanged: (double? value) {
                          setState(() {
                            dropdown2 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<double>>((double value) {
                          return DropdownMenuItem<double>(
                            value: value,
                            child: Center(child: Text(value.toString())),
                          );
                        }).toList(),
                      ),
                    )),
                Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: VivatechColor.blue),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                      decoration: const BoxDecoration(
                          color: VivatechColor.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: DropdownButton<double>(
                        value: dropdown3,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 8,
                        isExpanded: true,
                        itemHeight: null,
                        style: const TextStyle(
                          color: VivatechColor.white,
                        ),
                        underline: Container(
                          height: 2,
                          color: VivatechColor.black,
                        ),
                        onChanged: (double? value) {
                          setState(() {
                            dropdown3 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<double>>((double value) {
                          return DropdownMenuItem<double>(
                            value: value,
                            child: Center(child: Text(value.toString())),
                          );
                        }).toList(),
                      ),
                    )),
                Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: VivatechColor.blue),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                      decoration: const BoxDecoration(
                          color: VivatechColor.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: DropdownButton<double>(
                        value: dropdown4,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 8,
                        isExpanded: true,
                        itemHeight: null,
                        style: const TextStyle(
                          color: VivatechColor.white,
                        ),
                        underline: Container(
                          height: 2,
                          color: VivatechColor.black,
                        ),
                        onChanged: (double? value) {
                          setState(() {
                            dropdown4 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<double>>((double value) {
                          return DropdownMenuItem<double>(
                            value: value,
                            child: Center(child: Text(value.toString())),
                          );
                        }).toList(),
                      ),
                    )),
              ])),
          Container(
              width: 390,
              height: 50,
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 110,
                    height: 48,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: VivatechColor.purple),
                    child: TextButton(
                      onPressed: () {
                        if (dropdown1 == 1 &&
                            dropdown2 == 1 &&
                            dropdown3 == 1 &&
                            dropdown4 == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TresorPage(
                                      title: 'Chasse au trésor',
                                      type: "4",
                                      widget: TresorEtape2())));
                        }
                      },
                      child: const Text("Valider",
                          style: TextStyle(
                              fontSize: 18, color: VivatechColor.white)),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 48,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: VivatechColor.pink),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TresorPage(
                                      title: 'Chasse au trésor',
                                      type: "1",
                                    )));
                      },
                      child: const Text("Quitter",
                          style: TextStyle(
                              fontSize: 18, color: VivatechColor.white)),
                    ),
                  )
                ],
              ))
        ]));
  }
}
