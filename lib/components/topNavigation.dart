import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class TopNavigationComponent extends StatefulWidget {
  final String currentPage;
  final String? image;
  final Widget? content;

  const TopNavigationComponent(
      {Key? key, required this.currentPage, this.image, this.content})
      : super(key: key);

  @override
  State<TopNavigationComponent> createState() => _TopNavigationComponentState();
}

class _TopNavigationComponentState extends State<TopNavigationComponent> {
  String textNav = "";
  String baseImagePath = "";
  String imageNav = "";
  Map<String, dynamic> datas = {};
  Map<String, dynamic> datasPage = {};
  List<dynamic> color = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/pages/global.json');
    final data = await json.decode(response);

    setState(() {
      datas = data;
    });
  }

  @override
  void initState() {
    super.initState();

    readJson();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.currentPage == "conferences") {
      setState(() {
        datasPage = datas['conferences'];
      });
    } else if (widget.currentPage == "stands") {
      setState(() {
        datasPage = datas['stands'];
      });
    } else if (widget.currentPage == "pass") {
      setState(() {
        datasPage = datas['pass'];
      });
    } else if (widget.currentPage == "scan-qrcode") {
      setState(() {
        datasPage = datas['scan-qrcode'];
      });
    } else if (widget.currentPage == "cv") {
      setState(() {
        datasPage = datas['cv'];
      });
    } else if (widget.currentPage == "games") {
      setState(() {
        datasPage = datas['games'];
      });
    } else if (widget.currentPage == "treasure") {
      setState(() {
        datasPage = datas["games"]["game"][0]['treasure'];
      });
    } else if (widget.currentPage == "game-logic") {
      setState(() {
        datasPage = datas["games"]["game"][0]["game-logic"];
      });
    } else if (widget.currentPage == "game-memory") {
      setState(() {
        datasPage = datas["games"]["game"][0]['game-memory'];
      });
    } else if (widget.currentPage == "quiz") {
      setState(() {
        datasPage = datas["games"]["game"][0]['quiz'];
      });
    }

    return Column(children: [
      Row(children: [
        Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.fromLTRB(20, 40, 20, 40),
            child: Row(children: [
              Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(
                          int.parse(datasPage["color"][0]),
                          int.parse(datasPage["color"][1]),
                          int.parse(datasPage["color"][2]),
                          double.parse(datasPage["color"][3])),
                      border: Border.all(
                        color: Color.fromRGBO(
                            int.parse(datasPage["border-color"][0]),
                            int.parse(datasPage["border-color"][1]),
                            int.parse(datasPage["border-color"][2]),
                            double.parse(datasPage["border-color"][3])),
                        width: 3,
                        style: BorderStyle.solid,
                      )),
                  child: widget.currentPage == "conferences" ||
                          widget.currentPage == "stands"
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(imageNav, fit: BoxFit.contain))
                      : Padding(
                          padding: widget.currentPage == "pass"
                              ? const EdgeInsets.all(2)
                              : const EdgeInsets.all(8),
                          child: Image.asset(datasPage["image"]))),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                    border: Border.all(
                        color: Color.fromRGBO(
                            int.parse(datasPage["border-color"][0]),
                            int.parse(datasPage["border-color"][1]),
                            int.parse(datasPage["border-color"][2]),
                            double.parse(datasPage["border-color"][3])),
                        width: 3,
                        style: BorderStyle.solid)),
                child: Text(datasPage["title"].toUpperCase(),
                    style: const TextStyle(
                        color: Color.fromRGBO(85, 8, 160, 0.7),
                        fontSize: 22,
                        fontFamily: "MuseoSans",
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              )
            ]))
      ]),
      if (widget.content != null) widget.content!
    ]);
  }
}
