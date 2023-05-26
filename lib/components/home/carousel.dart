import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

final List<String> imgList = [
  "assets/pages/home/ConferenceFutur.png",
  "assets/pages/home/ConferenceWeb.png",
  "assets/pages/home/ConferenceFutur.png",
  "assets/pages/home/ConferenceWeb.png"
];

final List<String> textList = ["Futur", "Web", "Futur", "Web"];

final List<String> imgListStand = [
  "assets/pages/home/StandOrange.png",
  "assets/pages/home/StandOrange.png",
  "assets/pages/home/StandOrange.png",
  "assets/pages/home/StandOrange.png"
];

final List<String> textStandList = ["Orange", "Orange", "Orange", "Orange"];

final themeMode = ValueNotifier(2);

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({super.key, required this.type});

  final String type;

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<dynamic> _data1 = [];
  List<dynamic> _data2 = [];

  Future<void> readJson() async {
    final String response1 = await rootBundle
        .loadString('assets/pages/conferences/confDetails.json');

    final String response2 =
        await rootBundle.loadString('assets/pages/stands/standDetails.json');

    final data1 = await json.decode(response1);
    final data2 = await json.decode(response2);

    setState(() {
      _data1 = data1;
      _data2 = data2;
    });
  }

  @override
  void initState() {
    super.initState();

    readJson();
  }

  @override
  Widget build(BuildContext context) {
    List<List<String>> imageLists = [imgList];
    List<List<String>> imageStandLists = [imgListStand];
    List<Widget> carouselItems1 = [];
    List<Widget> carouselItems2 = [];

    for (List<String> imageList in imageLists) {
      for (int i = 0; i < imageList.length; i += 2) {
        Widget carouselItem = Row(
          children: [
            Expanded(
              child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "/conference"),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 4, 0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                              image: AssetImage(imageList[i]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Center(
                            child: Text(
                              textList[i].toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        );
        carouselItems1.add(carouselItem);
      }
    }

    for (List<String> imageList in imageStandLists) {
      for (int i = 0; i < imageList.length; i += 2) {
        Widget carouselItem = Row(
          children: [
            Expanded(
              child: i + 1 < imageList.length
                  ? GestureDetector(
                      onTap: () => Navigator.pushNamed(context, "/stand"),
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(4, 20, 0, 0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                  image: AssetImage(imageList[i + 1]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              child: Center(
                                child: Text(
                                  textStandList[i].toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                  : Container(),
            ),
          ],
        );
        carouselItems2.add(carouselItem);
      }
    }

    return Column(children: [
      widget.type == "1"
          ? Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 15),
              child: Container(
                height: 200,
                width: 480,
                child: Column(
                  children: [
                    Expanded(
                      child: CarouselSlider(
                        items: carouselItems1,
                        carouselController: _controller,
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 3.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageLists[0].asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ))
          : Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 15),
              child: Container(
                height: 200,
                width: 480,
                child: Column(
                  children: [
                    Expanded(
                      child: CarouselSlider(
                        items: carouselItems2,
                        carouselController: _controller,
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 3.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageLists[0].asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ))
    ]);
  }
}
