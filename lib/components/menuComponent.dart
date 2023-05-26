// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, avoid_print
import 'package:flutter/material.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        child: Column(children: [
          Container(
              color: Color(0xFF5508A0),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 50,
                    ),
                    onTap: () => {Navigator.pushNamed(context, "/")},
                  ),
                  GestureDetector(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 135, 22, 248),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: Color.fromARGB(255, 135, 22, 248),
                                width: 3)),
                        child: Image.asset("assets/qr.png",
                            width: 40, height: 40)),
                    onTap: () =>
                        {Navigator.pushNamed(context, "/scanner-qrcode")},
                  ),
                  GestureDetector(
                    child: Image.asset("assets/map.png", width: 40, height: 40),
                    onTap: () => {Navigator.pushNamed(context, "/")},
                  )
                ],
              ))
          /*ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
          child: BottomNavigationBar(
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
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked])*/
        ]));
  }
}
