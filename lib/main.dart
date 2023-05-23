/*import 'package:flutter/material.dart';

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
    StandDetailsPage(),
    ConferenceDetailsPage(),
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
              image: AssetImage('images/background.png'),
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
            selectedItemColor: Colors.yellow, // Couleur de l'icône sélectionnée
            backgroundColor: Color(0xFF5508A0),
            elevation: 15,
            iconSize: 30,
            selectedFontSize: 0, // Masquer le label
            unselectedFontSize: 0, // Masquer le label
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
                  'images/map.png',
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
              // Action à effectuer lorsque le bouton flottant est pressé
            },
            child: Image.asset(
              'images/qr.png',
              width: 40,
              height: 40,
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
*/
