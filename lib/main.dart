import 'package:flutter/material.dart';
import 'package:front/pages/defeat_quiz_page.dart';
import 'package:front/pages/game_quiz_page.dart';
import 'package:front/pages/tutoriel_quiz_page.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:vivatech/screens/games.dart';
import 'package:vivatech/screens/pass.dart';
import 'package:vivatech/screens/scanQrCode.dart';

import 'package:vivatech/components/home/home.dart';

import 'pages/stand_details_page.dart';
import 'pages/conference_details_page.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [
    ConferenceDetailsPage(),
    StandDetailsPage()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: _pages[_selectedIndex],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            unselectedItemColor: Color(0xFF5508A0),
            selectedItemColor: Colors.yellow,
            backgroundColor: Color(0xFF5508A0),
            elevation: 15,
            iconSize: 30,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 50,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/map.png',
                  width: 40,
                  height: 40,
                ),
                label: '',
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFA1009B),
          ),
          child: FloatingActionButton(
            onPressed: () {
              // Action to perform when the floating action button is pressed
            },
            child: Image.asset(
              'assets/qr.png',
              width: 40,
              height: 40,
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      debugShowCheckedModeBanner: false,
      title: 'VivaTech',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.white,
            fontFamily: 'MuseoSans'),
        home: const Scene(),
        initialRoute: '/',
      routes: {
        '/stand': (context) => StandDetailsPage(),
        '/conference': (context) => ConferenceDetailsPage(),
        '/quizGame': (context) => QuizScreen(),
        '/tutorialQuizPage' :(context) =>TutorialQuizPage(),
        '/pass': (context) => Pass(),
          '/scanner-qrcode': (context) => ScanQrCode(),
          '/jeux': (context) => Games(),
          // '/jeux/jeu-logique/tutoriel': (context) => GameLogicTutorial(),
          // '/jeux/jeu-logique': (context) => GameLogic(),
      },
    );
