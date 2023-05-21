// conference_details_page.dart
import 'package:flutter/material.dart';
import 'package:front/widgets/padding_description.dart';
import 'package:front/widgets/rounded_image.dart';
import 'conference.dart';
import 'widgets/pink_row.dart';

class ConferenceDetailsPage extends StatelessWidget {
  // Instanciation de la conférence avec des valeurs spécifiques
  Conference conference = Conference(
    'Ma conférence',
    'Description de ma conférence kkkkkkkk llllllllll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh ggggg'
        'ggggggg dddddd kkkkkkkk llllllllll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh gggggggggggg dd'
        'dddd kkkkkkkk llllllllll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh gggggggggggg dddddd kkkk'
        'kkkk llllllllll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh gggggggggggg dddddd kkkkkkkk lllllll'
        'lll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh gggggggggggg dddddd kkkkkkkk llllllllll mmmmmm'
        'mmmmmm jjjjjjjjjj hhhhhhhhhhh ggggg'
        'ggggggg ddddddkkkkkkkk llllllllll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh gggggggggggg dddddd',
    [
      Presenter('Présentateur 1', 'images/pres1.png'),
      Presenter('Présentateur 2', 'images/pres1.png'),
      Presenter('Présentateur 3', 'images/pres1.png'),
      Presenter('Présentateur 4', 'images/pres1.png'),
      Presenter('Présentateur 5', 'images/pres1.png'),
      Presenter('Présentateur 6', 'images/pres1.png'),

    ],
  );

  ConferenceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(

        child: Column(children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.all(3),
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: RoundedImage(30, Color(0xFF00FF00),AssetImage("images/futur.png")),
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
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          conference.name.toUpperCase(),
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
                        PadDescription(conference.description),
                        RowPink('Présenteurs'),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              for (var i = 0;
                              i < conference.presenters.length;
                              i += 3)
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    for (var j = i;
                                    j < i + 3 &&
                                        j < conference.presenters.length;
                                    j++)
                                      FriendsImage(
                                        conference.presenters[j].name,
                                        conference.presenters[j].imageURL,
                                        width / 3.5,
                                      ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ))),
          )
        ]));
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
