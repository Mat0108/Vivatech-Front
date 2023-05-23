// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/components/background.dart';
import 'package:vivatech/components/pass/qrCodeGenerator.dart';
import 'package:vivatech/components/topNavigation.dart';

class Pass extends StatefulWidget {
  @override
  State<Pass> createState() => _PassState();
}

class _PassState extends State<Pass> {
  int _widgetId = 1;
  bool _isClicked = false;

  Widget _renderPassWidget() {
    return Container(
        key: Key("first"),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.65,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/pages/home/pass.png",
            width: MediaQuery.of(context).size.width * 0.9,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Cliquez le billet pour afficher le QR Code",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.7),
                    fontSize: 15,
                    fontFamily: "MuseoSans",
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          )
        ]));
  }

  Widget _renderQrCodeWidget() {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Container(
        key: Key("second"),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.65,
        child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.white, width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(10)),
            child: QrCodeGenerator(url: arguments["qrCode"])));
  }

  Widget _renderWidget() {
    return _widgetId == 1 ? _renderPassWidget() : _renderQrCodeWidget();
  }

  void _updateWidget() {
    setState(() {
      if (!_isClicked) {
        _widgetId = _widgetId == 1 ? 2 : 1;
        _isClicked = true;
      } else {
        _isClicked = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundComponent(
      content: TopNavigationComponent(
        currentPage: "pass",
        content: GestureDetector(
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: _renderWidget()),
          onTap: () => {_updateWidget()},
        ),
      ),
    ));
  }
}
