import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:vivatech/screens/pass.dart';
import 'package:vivatech/screens/scanQrCode.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'VivaTech',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.white,
            fontFamily: 'MuseoSans'),
        home: ScanQrCode(),
        initialRoute: '/',
        routes: {
          '/pass': (context) => Pass(),
          '/scan-qrcode': (context) => ScanQrCode()
        });
  }
}
