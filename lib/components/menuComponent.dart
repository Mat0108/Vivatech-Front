// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';
import 'package:vivatech/screens/home.dart';
import 'package:vivatech/screens/scanQrCode.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 19, 0, 0),
              child: Container(
                  color: Color(0xFF5508A0),
                  height: 60.5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 45,
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home(),
                                fullscreenDialog: true),
                          ),
                        },
                      ),
                      GestureDetector(
                        child: Container(
                            width: 35,
                            height: 35,
                            child: Image.asset("assets/qr.png",
                                fit: BoxFit.contain)),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScanQrCode(),
                                fullscreenDialog: true),
                          ),
                        },
                      ),
                    ],
                  )))
        ]));
  }
}
