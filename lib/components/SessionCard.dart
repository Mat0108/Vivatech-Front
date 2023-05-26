import 'package:flutter/material.dart';
import 'package:vivatech/widgets/presenters_image.dart';
import '../models/conference.dart';

class SessionCard extends StatelessWidget {
  final Session session;

  const SessionCard({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF00FF00),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                session.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Présentateurs:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    for (var i = 0; i < session.presenters.length; i += 3)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (var j = i;
                              j < i + 3 && j < session.presenters.length;
                              j++)
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(5),
                                      width: width / 6,
                                      height: width / 6,
                                      child: myPic(
                                          5, session.presenters[j].imageURL),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      width: width / 6,
                                      height: width / 6,
                                      child: Text(
                                        session.presenters[j].name,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
