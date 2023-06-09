import 'package:flutter/material.dart';
import 'package:vivatech/components/color.dart';
import 'package:vivatech/components/home/carousel.dart';
import 'package:vivatech/components/menuComponent.dart';
import 'package:vivatech/screens/ar.dart';
import 'package:vivatech/screens/games.dart';
import 'package:vivatech/screens/pass.dart';
import 'package:vivatech/screens/pdf_viewer_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background/bg-gradient-vivatech-2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 400,
                height: 120,
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10 * fem),
                  border: Border.all(color: const Color(0x33ffffff)),
                  color: const Color(0xa5ffffff),
                  image: const DecorationImage(
                    image: AssetImage("assets/pages/home/VivatechTitre.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(25 * fem, 40 * fem, 25 * fem, 0 * fem),
                height: 102 * fem,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        child: ButtonAccueil('assets/pages/home/buttonPass.png',
                            'Mon pass', const Color(0xff00ffff), fem, ffem),
                        onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pass(),
                                    fullscreenDialog: true),
                              ),
                            }),
                    GestureDetector(
                        child: ButtonAccueil('assets/pages/home/buttonGame.png',
                            'Jeux', const Color(0xff00ff00), fem, ffem),
                        onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Games(),
                                    fullscreenDialog: true),
                              ),
                            }),
                    GestureDetector(
                        child: ButtonAccueil('assets/pages/home/buttonAR.png',
                            'Plan', const Color(0xffffff00), fem, ffem),
                        onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AR(
                                        latitude: 34.5375, longitude: 35.237),
                                    fullscreenDialog: true),
                              ),
                            }),
                    GestureDetector(
                        child: ButtonAccueil('assets/pages/home/buttonCV.png',
                            'CV', const Color(0xfff15700), fem, ffem),
                        onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PdfUploaderPage(),
                                    fullscreenDialog: true),
                              ),
                            }),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                    child: Container(
                      width: 130,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: VivatechColor.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'Conférences',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  const CarouselWithIndicatorDemo(type: "1"),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Container(
                      width: 130,
                      height: 35,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        color: VivatechColor.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'Stands',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  const CarouselWithIndicatorDemo(type: "2"),
                ],
              ),
              const MenuComponent()
            ],
          ),
        ),
      ),
    );
  }

  Widget ButtonAccueil(
      String url, String titre, Color border, double fem, double ffem) {
    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
      width: 65 * fem,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
            height: 60,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(color: border),
              color: const Color(0xb2ffffff),
              borderRadius: BorderRadius.circular(50 * fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
            child: Center(
              child: SizedBox(
                width: 43 * fem,
                height: 40 * fem,
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 0 * fem),
            child: Text(
              titre,
              style: const TextStyle(
                  fontSize: 11,
                  color: VivatechColor.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
