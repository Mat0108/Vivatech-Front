// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:vivatech/components/background.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:vivatech/components/topNavigation.dart';

class ScanQrCode extends StatefulWidget {
  @override
  State<ScanQrCode> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  String? qrcode;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
            content: TopNavigationComponent(
                currentPage: "game-logic",
                content: Expanded(
                    child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 30),
                        child: Container(
                          alignment: Alignment.center,
                          width: 350,
                          height: 500,
                          child: QRView(
                            key: qrKey,
                            onQRViewCreated: _onQRViewCreated,
                          ),
                        )),
                    Center(
                      child: result != null
                          ? GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  "/pass",
                                  arguments: {"qrCode": result!.code},
                                );
                              },
                              child: Container(
                                  width: 200,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(85, 8, 160, 1),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color:
                                              Color.fromRGBO(85, 8, 160, 0.3),
                                          width: 3)),
                                  child: Text(
                                    "Voir mon pass",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                            )
                          : Container(),
                    ),
                  ],
                )))));
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
