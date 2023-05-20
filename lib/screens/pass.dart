// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';

class Pass extends StatefulWidget {
  @override
  State<Pass> createState() => _PassState();
}

class _PassState extends State<Pass> {
  int _widgetId = 1;
  bool clicked = false;

  Widget _renderPassWidget() {
    return Column(children: [
      ShakeWidget(
          duration: Duration(seconds: 5),
          shakeConstant: ShakeRotateConstant1(),
          autoPlay: true,
          enableWebMouseHover: true,
          child: Container(
              key: Key("first"),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/pass/pass.png",
                      width: MediaQuery.of(context).size.width * 0.9,
                    )
                  ]))),
      Text("Cliquez le billet pour afficher le QR Code",
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.7),
              fontSize: 15,
              fontFamily: "MuseoSans",
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
    ]);
  }

  Widget _renderQrCodeWidget() {
    return Container(
        key: Key("second"),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.65,
        child: Image.asset("assets/pass/qrcode.png"));
  }

  Widget _renderWidget() {
    return _widgetId == 1 ? _renderPassWidget() : _renderQrCodeWidget();
  }

  void _updateWidget() {
    setState(() {
      if (!clicked) {
        _widgetId = _widgetId == 1 ? 2 : 1;
        clicked = true;
      } else {
        clicked = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background/bg-gradient-vivatech-2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(children: [
        Row(children: [
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
            child: Row(
              children: [
                Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 255, 255, 1),
                        border: Border.all(
                            color: Color.fromRGBO(85, 8, 160, 0.3),
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(100)),
                    child: Image.asset("assets/pass/pass.png")),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.7),
                      border:
                          Border.all(color: Color.fromRGBO(0, 255, 255, 1))),
                  child: Text("Mon Pass",
                      style: TextStyle(
                          color: Color.fromRGBO(85, 8, 160, 0.7),
                          fontSize: 22,
                          fontFamily: "MuseoSans",
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ]),
        GestureDetector(
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: _renderWidget()),
          onTap: () => {_updateWidget()},
        ),
      ]),
    ));
  }
}
