import 'package:flutter/material.dart';

class AppStyles {
  // Colors
  static const Color primaryColor = Color(0xFF687DFF);
  static const Color textColor = Color(0xFF3B3B3B);
  static const Color secondaryTextColor = Color(0xFF526480);
  static const Color backgroundColor = Color(0xFFF4F6FD);
  static const Color whiteColor = Colors.white;
  static const Color ratingColor = Colors.amber;
  static const Color greyColor = Colors.grey;
  static const Color lightGreyColor = Color(0xFFE0E0E0);

  // Text Styles
  static const TextStyle headline1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle headline3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: textColor,
  );

  static const TextStyle headline4 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static const TextStyle subtitle1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static const TextStyle subtitle2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: textColor,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: secondaryTextColor,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    color: greyColor,
  );

  static const TextStyle buttonText = TextStyle(
    color: whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle linkText = TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );

  // Box Decorations
  static BoxDecoration get searchBoxDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
        border: Border.all(color: lightGreyColor),
      );

  static BoxDecoration get cardDecoration => BoxDecoration(
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

  static BoxDecoration get imageDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      );

  static BoxDecoration get fullWidthImageDecoration => BoxDecoration(
        color: Colors.grey[200],
      );

  static BoxDecoration get ratingDecoration => BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
      );

  static BoxDecoration get primaryButtonDecoration => BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
      );

  // Paddings
  static const EdgeInsets defaultPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets screenPadding = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 16,
  );
  static const EdgeInsets smallPadding = EdgeInsets.all(8);
  static const EdgeInsets mediumPadding = EdgeInsets.all(12);
  static const EdgeInsets largePadding = EdgeInsets.all(16);
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 16);

  // Margins
  static const EdgeInsets defaultMargin = EdgeInsets.all(16);
  static const EdgeInsets smallMargin = EdgeInsets.all(8);
  static const EdgeInsets bottomMargin = EdgeInsets.only(bottom: 16);

  // Sizes
  static const double smallIconSize = 16;
  static const double mediumIconSize = 24;
  static const double largeIconSize = 32;
  static const double imageHeight = 180;
  static const double cardWidth = 200;
  static const double hotelCardWidth = 180;
  static const double hotelImageHeight = 120;
  static const double defaultRadius = 12;
  static const double buttonHeight = 48;

  // Full width image style (100% width)
  static SizedBox fullWidthImage(double height, {String? imageUrl, Widget? child}) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ClipRect(
        child: Container(
          decoration: imageUrl != null
              ? BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                )
              : fullWidthImageDecoration,
          child: child,
        ),
      ),
    );
  }

  // Helpers for responsive design
  static double getFullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getFullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}