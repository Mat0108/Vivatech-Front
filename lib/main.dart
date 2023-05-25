import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:vivatech/components/game/quitGameContainer.dart';
import 'package:vivatech/components/game/winLoseContainer.dart';
import 'package:vivatech/screens/game_memory.dart';
import 'package:vivatech/screens/games.dart';
import 'package:vivatech/screens/pass.dart';
import 'package:vivatech/screens/scanQrCode.dart';
import 'package:vivatech/screens/game_memory_tutorial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'VivaTech',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.white,
            fontFamily: 'MuseoSans'),
        home: GameMemoryTutorial(),
        // initialRoute: '/',
        // routes: {
        //   '/pass': (context) => Pass(),
        //   '/scanner-qrcode': (context) => ScanQrCode(),
        //   '/jeux': (context) => Games(),
        //   '/jeux/jeu-logique/tutoriel': (context) => GameMemoryTutorial(),
        //   '/jeux/jeu-logique': (context) => GameMemory(),
        // }
      );
  }
}
