import 'package:flutter/material.dart';
import 'package:front/widgets/padding_description.dart';
import 'package:front/widgets/pink_row.dart';
import 'package:front/widgets/rounded_image.dart';
import '../models/stand.dart';

class StandDetailsPage extends StatelessWidget {
  // Instanciation de la conférence avec des valeurs spécifiques
  Stand stand = Stand(
      lieu: "lieu hiiiiiiiiihhhhhhhhhhhhhhhhhhhhhiiiiii",
      description: '"heloooooooooooù'
          'oooooohhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'
          'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'
          'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhoooo"');

  StandDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: Column(children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.all(3),
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: RoundedImage(30, Color(0xFFFFFF00),AssetImage("images/qr.png")),
              ),
              Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      border: Border.all(color: Color(0xFFFFFF00), width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "stands".toUpperCase(),
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  )),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Container(
                    margin:
                    const EdgeInsets.only(left: 12, right: 12, top: 30),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        RowPink('Description'),
                        PadDescription(stand.description),
                        RowPink('Présenteurs'),
                        PadDescription(stand.lieu)
                      ],
                    ))),
          )
        ]));
  }


}
