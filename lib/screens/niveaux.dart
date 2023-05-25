import 'package:flutter/material.dart';
import 'package:vivatech/components/color.dart';
import 'package:vivatech/screens/game_memory.dart';

class Scene extends StatefulWidget {
  const Scene({super.key});
  @override
  State<Scene> createState() => _Scene();
}

class _Scene extends State<Scene> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        height: 800,
        width: 480,
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
                height: 70,
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10 * fem),
                  border: Border.all(color: const Color(0x33ffffff)),
                  color: const Color(0xa5ffffff),
                ),
                child: const Center(
                  child: Text(
                    "Choisissez votre niveau de difficulté",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                  height:
                      40), // Augmente l'espace entre le titre et les boutons
              const SizedBox(height: 20), // Réduit l'espace entre les boutons
              Container(
                margin: EdgeInsets.fromLTRB(25 * fem, 0, 25 * fem, 0),
                height: 120 * fem, // Agrandit la hauteur des boutons
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, // Ajuste l'espacement entre les boutons
                  children: [
                    ButtonAccueil('Facile', 1, VivatechColor.green, fem, ffem),
                    ButtonAccueil('Moyen', 2, VivatechColor.orange, fem, ffem),
                    ButtonAccueil('Difficile', 3, Colors.red, fem, ffem),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ButtonAccueil(
      String titre, double niveau, Color color, double fem, double ffem) {
    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
      width: 100 * fem, // Agrandit la largeur des boutons
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
            height: 80 * fem, // Agrandit la hauteur des boutons
            width: 80 * fem, // Agrandit la largeur des boutons
            decoration: BoxDecoration(
              border: Border.all(color: color),
              color: color,
              borderRadius: BorderRadius.circular(50 * fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
            child: TextButton(
              child: Text(
                titre,
                style:
                    const TextStyle(fontSize: 20, color: VivatechColor.white),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Memoire(
                              niveau: niveau,
                            )));
              },
            ),
          ),
        ],
      ),
    );
  }
}
