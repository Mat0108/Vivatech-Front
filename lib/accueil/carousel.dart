import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:front/color.dart';

final List<String> imgList = [
  "assets/images/accueil/futur.png",
  "assets/images/accueil/web3.png",
  "assets/images/accueil/rectangle-33.png",
  "assets/images/accueil/rectangle-34.png"
];

final List<String> imgListStand = [
  "assets/images/accueil/futur.png",
  "assets/images/accueil/rectangle-33.png",
  "assets/images/accueil/web3.png",
  "assets/images/accueil/rectangle-34.png"
];

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

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 480,
        child: Column(children: [
          Expanded(
            child: CarouselSlider(
              items: (widget.type == "1" ? imgList : imgListStand)
                  .map(
                    (item) => Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            child: Center(
                                child: Text(
                              item
                                  .toString()
                                  .split("/accueil/")[1]
                                  .split(".")[0],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 3.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: (widget.type == "1" ? imgList : imgListStand)
                .asMap()
                .entries
                .map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ]));
  }
}
