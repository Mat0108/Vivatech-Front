// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:vivatech/components/background.dart';

class ScanQrCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
            content: Center(
                child: TextButton(
      onPressed: () async {
        String qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666',
          'Annuler',
          true,
          ScanMode.QR,
        );

        if (qrCode != '-1') {
          print('QR code: $qrCode');

          Navigator.pushNamed(context, "/pass", arguments: {"qrCode": qrCode});
        } else {
          print('Scanne QR Code a été annulé');
        }
      },
      child: Text('Scanner QR Code'),
    ))));
  }
}
