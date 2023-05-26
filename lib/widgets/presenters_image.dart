import 'package:flutter/material.dart';

Container myPic(double radius, String imagePath) {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        width: 3,
        color: const Color(0xFF00FF00),
      ),
      color: Colors.white,
    ),
    child: CircleAvatar(
      foregroundColor: null,
      backgroundColor: Colors.transparent,
      radius: radius,
      backgroundImage: AssetImage(imagePath),
    ),
  );
}

Column PresentersImage(String name, String imagePath, double width) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.all(5),
        width: width,
        height: width,
        child: myPic(5, imagePath),
      ),
      Text(
        name,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      Padding(padding: EdgeInsets.only(bottom: 5)),
    ],
  );
}
