import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //Ajoutez les pages ici
      initialRoute: '/',
      routes: {
        '/': (context) => ConferenceDetail(),
      },
    );
  }
}

class ConferenceDetail extends StatelessWidget {
  ConferenceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // Ajouter une image de fond qui s'applique à tous les enfants
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  padding: const EdgeInsets.all(3),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: myProfilePic(30),
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
                        'Mon titre'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 10,
                        child: const Icon(
                          Icons.check,
                          size: 12,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(left: 12, right: 12, top: 30),
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
                    PadDescription(
                        'Description jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjgggg'
                        'ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'
                        'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'
                        'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhgggggg'),
                    RowPink('Présenteurs'),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          for (var i = 0; i < friends.length; i += 3)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (var j = i;
                                    j < i + 3 && j < friends.length;
                                    j++)
                                  FriendsImage(friends.keys.toList()[j],
                                      friends.values.toList()[j], width / 3.5),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                )),
          ])),
    );
  }

  Container myProfilePic(double radius) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.lightGreenAccent,
          // Spécifier la couleur de la bordure ici
          width: 2,
        ),
        color: Colors.white, // Spécifier la couleur de fond ici
      ),
      child: CircleAvatar(
        foregroundColor: null,
        backgroundColor: Colors.transparent,
        radius: radius,
        backgroundImage: const AssetImage("images/futur.png"),
      ),
    );
  }

  Row RowPink(String text) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
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

  final Map<String, String> friends = {
    "José": "images/pres1.png",
    "Maggie": "images/pres2.png",
    "Douggy": "images/pres3.png",
    "Dggy": "images/pres3.png",
    "Dougg": "images/pres3.png",
    "Do": "images/pres3.png"
  };

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
