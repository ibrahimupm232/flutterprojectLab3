import 'package:flutter/material.dart';

class AppStyles {
  // Colors
  static const Color primaryColor = Color(0xFF687DFF);
  static const Color textColor = Color(0xFF3B3B3B);
  static const Color secondaryTextColor = Color(0xFF526480);
  static const Color backgroundColor = Color(0xFFF4F6FD);
  static const Color whiteColor = Colors.white;
  static const Color ratingColor = Colors.amber;

  // Text Styles
  static const TextStyle headline1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Color(0xFF3B3B3B),
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Color(0xFF3B3B3B),
  );

  static const TextStyle headline3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: Color(0xFF3B3B3B),
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Color(0xFF3B3B3B),
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14,
    color: Colors.grey,
  );

  static const TextStyle buttonText = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle viewAllText = TextStyle(
    color: Color(0xFF687DFF),
    fontWeight: FontWeight.bold,
  );

  // Box Decorations
  static BoxDecoration searchBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: primaryColor,
  );

  static BoxDecoration cardDecoration = BoxDecoration(
    color: whiteColor,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 1,
        blurRadius: 5,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static BoxDecoration imageDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration ratingDecoration = BoxDecoration(
    color: whiteColor,
    borderRadius: BorderRadius.circular(20),
  );

  // Paddings
  static const EdgeInsets defaultPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets smallPadding = EdgeInsets.all(8);
  static const EdgeInsets mediumPadding = EdgeInsets.all(12);
  static const EdgeInsets largePadding = EdgeInsets.all(15);

  // Sizes
  static const double smallIconSize = 16;
  static const double mediumIconSize = 24;
  static const double imageSize = 50;
  static const double cardWidth = 200;
  static const double hotelCardWidth = 180;
  static const double hotelImageHeight = 120;
}