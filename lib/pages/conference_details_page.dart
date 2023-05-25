import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:front/widgets/rounded_image.dart';
import '../components/SessionCard.dart';
import '../models/conference.dart';
import '../widgets/pink_row.dart';

class ConferenceDetailsPage extends StatefulWidget {
  const ConferenceDetailsPage({Key? key}) : super(key: key);

  @override
  _ConferenceDetailsPageState createState() => _ConferenceDetailsPageState();
}

class _ConferenceDetailsPageState extends State<ConferenceDetailsPage> {
  int _currentPage = 0;
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {

// Instanciation des présentateurs
    Presenter presenter51 = Presenter("Bruno BRITSCH", 'assets/conference/Metaverse/Tim Gould.png');
    Presenter presenter52= Presenter("Timo Gross", 'assets/conference/Metaverse/Timo Gross.png');
    Presenter presenter53 = Presenter("Arnaud Santin", 'assets/conference/Metaverse/Arnaud Santin.png');
    Presenter presenter54 = Presenter("Dimitri Carbonnelle", 'assets/conference/Metaverse/Dimitri Carbonnelle.png');
    Presenter presenter55 = Presenter("Tim Gould", 'assets/conference/Metaverse/Tim Gould.png');
    Presenter presenter56 = Presenter("Ann Mettler", 'assets/conference/Metaverse/Ann Mettler.png');
    Presenter presenter57= Presenter("Loïck Peyron ", 'assets/conference/Metaverse/Loïck Peyron.png');
    Presenter presenter58= Presenter("Alex Thomson", 'assets/conference/Metaverse/Alex Thomson.png');
    Presenter presenter59= Presenter("Arianna Simpson", 'assets/conference/Metaverse/Arianna Simpson.png');
    Presenter presenter60= Presenter("Brandon Millman", 'assets/conference/Metaverse/Brandon Millman.png');
    Presenter presenter61= Presenter("Catherine Chabaud", 'assets/conference/Metaverse/Catherine Chabaud.png');
    Presenter presenter62= Presenter("Marc Van Peteghem", 'assets/conference/Metaverse/Marc Van Peteghem.png');
    Presenter presenter63= Presenter("Grégoire Carlier", 'assets/conference/Metaverse/Grégoire Carlier.png');
    Presenter presenter64= Presenter("Fabien Gastou", 'assets/conference/Metaverse/Fabien Gastou.png');
    Presenter presenter65= Presenter("Patrick Aufort", 'assets/conference/Metaverse/Patrick Aufort.png');
    Presenter presenter66= Presenter("Claire Pétreault", 'assets/conference/Metaverse/Claire Pétreault.png');
    Presenter presenter67= Presenter("Sophie Viger", 'assets/conference/Metaverse/Sophie Viger.png');
    Presenter presenter68= Presenter("Thomas fonde Widoobiz", 'assets/conference/Metaverse/Thomas fonde Widoobiz.png');
    Presenter presenter69= Presenter("Caroline Ramade", 'assets/conference/Metaverse/Caroline Ramade.png');



// Création des sessions pour chaque jour
    Session session23 = Session("12:00 - 12:30", [presenter51], "La nouvelle économie de propriété du Web3 et la redéfinition des programmes CRM");
    Session session24= Session("10:45 - 11:15", [presenter52,presenter53], "Performance sportive : utiliser les données pour gagner");
    Session session25= Session("10:00 - 10:45", [presenter54,presenter55,presenter56], "L'énergie de l'Europe: de la crise au catalyseur");
    Session session26= Session("10:30 - 11:00", [presenter57, presenter58], "La dernière technologie de voile rendra-t-elle les skippers obsolètes ?");
    Session session27= Session("10:40 - 11:05", [presenter59,presenter60], "Le Web3 deviendra-t-il grand public?");
    Session session28= Session("11:00 - 11:30", [presenter61,presenter62], "La voile peut-elle vraiment soutenir la durabilité ?");
    Session session29= Session("11:30 - 12:05", [presenter63,presenter64], "Zéro gaspi : du déchet à l'opportunité");
    Session session30= Session("12:15 - 13:00", [presenter65,presenter66,presenter67], "Tech to Watch : Les métiers d'avenir (et comment s'y préparer)");
    Session session31= Session("14:00 - 14:20", [presenter68,presenter69], "De la Start-up Nation à l'Impact Nation ?");




// Création des jours avec leurs titres et sessions
    Day day1_Metaverse = Day("Mercredi 14", [session23,session24,session25]);
    Day day2_Metaverse= Day("Vendredi 16", [session26,session27,session28]);
    Day day3_Metaverse= Day("Samedi 17", [session29,session30,session31]);


// Création de l'objet Conference avec le programme complet
    Conference conferenceMetaverse = Conference(
      "Économie, jeux et métaverse ",
      [day1_Metaverse, day2_Metaverse,day3_Metaverse],
    );



    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15,left: 10, right: 10),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: RoundedImage(
                  30,
                  Color(0xFF00FF00),
                  AssetImage("assets/futur.png"),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 20),
                  padding: const EdgeInsets.symmetric(
                    vertical: 13,
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: Text(
                    conferenceMetaverse.name.toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(left: 12, right: 12, top: 30),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: CarouselSlider(
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height,
                      initialPage: _currentPage,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                    ),
                    items: conferenceMetaverse.program.map((day) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Color(0xFF00FF00),
                                    ),
                                    onPressed: () {
                                      _carouselController.previousPage();
                                    },
                                  ),
                                  RowPink(day.title),
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xFF00FF00),
                                    ),
                                    onPressed: () {
                                      _carouselController.nextPage();
                                    },
                                  ),
                                ],
                              ),
                             Expanded(child:  SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Wrap(
                                     children: day.sessions.map((session) {
                                       return Padding(
                                         padding: EdgeInsets.all(10),
                                         child: SessionCard(session: session),
                                       );
                                     }).toList(),
                                   ),
                                 ],
                               ),
                             ))
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
