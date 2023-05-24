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
    Presenter presenter1 = Presenter("John Doe", 'images/pres1.png');
    Presenter presenter2 = Presenter("Jane Smith", 'images/pres1.png');
    Presenter presenter3 = Presenter("David Johnson", 'images/pres1.png');
    Presenter presenter4 = Presenter("Sarah Brown", 'images/pres1.png');

    // Création des sessions pour chaque jour
    Session session1 =
        Session("10:00 AM", [presenter1, presenter2], "session1");
    Session session2 = Session("2:00 PM", [presenter3], "session1");
    Session session3 = Session("11:00 AM", [presenter4], "session1");
    Session session4 = Session("3:00 PM", [presenter2, presenter3], "session1");
    Session session5 = Session("9:00 AM", [presenter1, presenter4], "session1");
    Session session6 = Session("1:00 PM", [presenter2], "session1");
    Session session7 =
        Session("10:30 AM", [presenter3, presenter4], "session1");
    Session session8 = Session("2:30 PM", [presenter1], "session1");

    // Création des jours avec leurs titres et sessions
    Day day1 = Day("Day 1", [session1, session2]);
    Day day2 = Day("Day 2", [session3, session4]);
    Day day3 = Day("Day 3", [session5, session6]);
    Day day4 = Day("Day 4", [session7, session8]);

    // Création de l'objet Conference avec le programme complet
    Conference conference = Conference(
      "Ma Conférence",
      "Une description de la conférence",
      [day1, day2, day3, day4],
    );

    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: RoundedImage(
                  30,
                  Color(0xFF00FF00),
                  AssetImage("images/futur.png"),
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
                    conference.name.toUpperCase(),
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
                child:Padding(padding: EdgeInsets.only(top: 40),
                child:  CarouselSlider(
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
                  items: conference.program.map((day) {
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
                                    color:Color(0xFF00FF00),
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
                                    print("next");
                                    _carouselController.nextPage();
                                  },
                                ),
                              ],
                            ),
                            for (Session session in day.sessions)
                              Padding(padding: EdgeInsets.all(10),child: SessionCard(session: session),)
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
