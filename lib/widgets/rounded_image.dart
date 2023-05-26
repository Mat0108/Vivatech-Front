import 'package:flutter/material.dart';

Container RoundedImage(
    double radius, Color color, ImageProvider imageProvider) {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: color,
        width: 2,
      ),
      color: Colors.white,
    ),
    child: CircleAvatar(
      foregroundColor: null,
      backgroundColor: Colors.transparent,
      radius: radius,
      backgroundImage: imageProvider,
    ),
  );
}
