import 'package:flutter/material.dart';
import 'package:front/widgets/pink_row.dart';
import 'package:front/widgets/rounded_image.dart';
import 'stand.dart';

class StandDetailsPage extends StatelessWidget {
  // Instanciation de la conférence avec des valeurs spécifiques
  Stand stand = Stand(
      lieu: "lieu hiiiiiiiiihhhhhhhhhhhhhhhhhhhhhiiiiii",
      description: '"heloooooooooooù'
          'oooooohhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'
          'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'
          'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhoooo"');

  StandDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // Ajouter une image de fond qui s'applique à tous les enfants
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
          child: Column(children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  padding: const EdgeInsets.all(3),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: RoundedImage(30, Color(0xFFFFFF00),AssetImage("images/qr.png")),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 20),
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    border: Border.all(color: Color(0xFFFFFF00), width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "stands".toUpperCase(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                )),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Container(
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 30),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          RowPink('Description'),
                          PadDescription(stand.description),
                          RowPink('Présenteurs'),
                          PadDescription(stand.lieu)
                        ],
                      ))),
            )
          ])),

    );
  }



  Padding PadDescription(String text) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Container myPic(double radius, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          // Spécifier la couleur de la bordure ici
          width: 2,
        ),
        color: Colors.white, // Spécifier la couleur de fond ici
      ),
      child: CircleAvatar(
        foregroundColor: null,
        backgroundColor: Colors.transparent,
        radius: radius,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }

  Column FriendsImage(String name, String imagePath, double width) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          width: width,
          height: width,
          child: myPic(50, imagePath),
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
      ],
    );
  }
}
