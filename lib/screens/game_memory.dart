import 'dart:math';
import 'package:flutter/material.dart';
import 'package:vivatech/components/color.dart';
import 'package:vivatech/components/game/gameContainer.dart';
import 'package:vivatech/components/game/quitGameContainer.dart';
import 'package:vivatech/screens/niveaux.dart';

class ListImage {
  String url;
  bool cond;
  bool globalcond;
  int? index;
  ListImage({
    required this.url,
    required this.cond,
    required this.globalcond,
    this.index,
  });
}

class GameMemory extends StatefulWidget {
  const GameMemory({super.key, required this.niveau});
  final double niveau;

  @override
  State<GameMemory> createState() => _GameMemoryState();
}

class _GameMemoryState extends State<GameMemory> with TickerProviderStateMixin {
  late AnimationController _controller;

// 8 cartes
  List<ListImage> listCardFacile = [
    ListImage(
        url: "assets/pages/games/memory/cnrs.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/cnrs.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/axa.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/axa.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/edf.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/edf.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/huawei.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/huawei.png",
        cond: false,
        globalcond: false),
  ];

// 16 cartes
  List<ListImage> listCardMoyen = [
    ListImage(
        url: "assets/pages/games/memory/africa-news.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/africa-news.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/audi.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/audi.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/edf.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/edf.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/huawei.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/huawei.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/coss.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/coss.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/engie.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/engie.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/bbf.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/bbf.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/avomo.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/avomo.png",
        cond: false,
        globalcond: false),
  ];

  // 24 cartes
  List<ListImage> listCarddifficile = [
    ListImage(
        url: "assets/pages/games/memory/adreil.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/adreil.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/amazon.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/amazon.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/bloomin.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/bloomin.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/bugali.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/bugali.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/driveco.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/driveco.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/engie.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/engie.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/gaya.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/gaya.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/avomo.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/avomo.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/cilkoa.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/cilkoa.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/capvert.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/capvert.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/capgemini.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/capgemini.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/damocles.png",
        cond: false,
        globalcond: false),
    ListImage(
        url: "assets/pages/games/memory/damocles.png",
        cond: false,
        globalcond: false),
  ];

  ListImage card1 = ListImage(url: "", cond: false, globalcond: false);
  @override
  Widget build(BuildContext context) {
    Iterable<Widget> listWidget = (widget.niveau == 1
            ? listCardFacile
            : (widget.niveau == 2 ? listCardMoyen : listCarddifficile))
        .mapIndexed((index, element) => buildCard(element.url,
                "assets/icons/icon.png", element.cond, element.globalcond, () {
              setState(() {
                element.cond = true;
              });
              if (card1.url == "") {
                setState(() {
                  card1.url = element.url;
                  card1.index = index;
                });
              } else {
                if (identical(card1.url, element.url)) {
                  setState(() {
                    element.globalcond = true;
                    listCardFacile[card1.index!].globalcond = true;
                    card1.url = "";
                    card1.index = -1;
                  });
                } else {
                  Future.delayed(const Duration(milliseconds: 300), () {
                    setState(() {
                      listCardFacile[card1.index!].cond = false;
                      element.cond = false;
                      card1.url = "";
                      card1.index = -1;
                    });
                  });
                }
              }
            }));

    return GameContainerComponent(
        content: Positioned(
      width: 390,
      height: 400,
      top: 80,
      child: SizedBox(
        width: 390,
        height: 400,
        child: Column(
          children: <Widget>[
            Container(
                width: 390,
                height: 600,
                margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    children: listWidget.toList())),
            Container(
              width: 390,
              height: 50,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 110,
                    height: 48,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: VivatechColor.pink,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const QuitGameContainerComponent(
                                      gameName: 'game-memory',
                                    )));
                      },
                      child: const Text(
                        "Quitter",
                        style: TextStyle(
                          fontSize: 18,
                          color: VivatechColor.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget card(String url, bool cond, VoidCallback callback) {
    return Container(
      decoration: BoxDecoration(
        color: VivatechColor.white,
        border: Border.all(color: VivatechColor.blue, width: 3),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      width: 80,
      height: 160,
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Container(
          width: 40,
          height: 40,
          child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: IconButton(
                  iconSize: 30, icon: Image.asset(url), onPressed: callback))),
    );
  }

  Widget __transitionBuilder(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = false;
        final value = rotateAnim.value;
        return Transform(
          transform: Matrix4.rotationY(value),
          child: widget,
          alignment: Alignment.center,
        );
      },
    );
  }

  Widget buildCard(String url, String defaulturl, bool cond, bool globalcond,
      VoidCallback callback) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 4600),
        transitionBuilder: __transitionBuilder,
        layoutBuilder: (widget, list) => Stack(children: [widget!, ...list]),
        child: globalcond
            ? card(url, cond, callback)
            : card((cond ? url : defaulturl), cond, callback));
  }
}
