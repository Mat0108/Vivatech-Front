import 'package:flutter/material.dart';
import '../models/conference.dart';

class SessionCard extends StatelessWidget {
  final Session session;

  SessionCard({required this.session});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF00FF00),
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
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Presenters:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  for (Presenter presenter in session.presenters)
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(presenter.imageURL),
                          radius: 25,
                        ),
                        SizedBox(height: 5),
                        Text(presenter.name),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
