import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle productRowItemName = TextStyle(
      color: Color.fromRGBO(0, 0, 0, 0.8),
      fontSize: 18,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);

  static const TextStyle productRowTotal = TextStyle(
      color: Color.fromRGBO(0, 0, 0, 0.8),
      fontSize: 18,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold);
}

abstract class IconClass {
  static const Icon home = Icon(Icons.home);
  static const Icon workouts = Icon(Icons.fitness_center);
  static const Icon activity = Icon(Icons.bar_chart_rounded);
  static const Icon programs = Icon(Icons.menu_book_rounded);
}

abstract class TabBarLable {
  static const String home = 'Ana Sayfa';
  static const String workouts = 'Antrenmanlar';
  static const String activity = 'Aktivite';
  static const String programs = 'Programlar';
}

abstract class TabBarColors {
  static const Color activeColor = CupertinoColors.activeGreen;
  static const Color primaryColor = Color(0xFF00BF6F);
  static const Color backgroundColor = Color(0xFF004f32);
  static const Color backgroundSecondaryColor = Color(0xFF79c141);
  static const Color blackColor = Color(0xFF1d1d1d);
  static const Color whiteColor = Color(0xFFf8f9fa);
  static const Color inActiveColor = CupertinoColors.inactiveGray;
}

abstract class CustomPaddings {
  static const EdgeInsets all = EdgeInsets.all(16);
  static const EdgeInsets only = EdgeInsets.only(left: 16, right: 16);
  static const EdgeInsets onlyTop = EdgeInsets.only(top: 16);
  static const EdgeInsets onlyBottom = EdgeInsets.only(bottom: 16);
  static const EdgeInsets onlyLeft = EdgeInsets.only(left: 16);
  static const EdgeInsets onlyRight = EdgeInsets.only(right: 16);
  static const EdgeInsets onlyTopBottom = EdgeInsets.only(top: 16, bottom: 16);
  static const EdgeInsets onlyTopBottom2 = EdgeInsets.only(top: 32, bottom: 32);
  static const EdgeInsets onlyLeftRight = EdgeInsets.only(left: 16, right: 16);
  static const EdgeInsets onlyTopLeft = EdgeInsets.only(top: 16, left: 16);
  static const EdgeInsets onlyTopRight = EdgeInsets.only(top: 16, right: 16);
  static const EdgeInsets onlyBottomLeft =
      EdgeInsets.only(bottom: 16, left: 16);
  static const EdgeInsets onlyBottomRight =
      EdgeInsets.only(bottom: 16, right: 16);
}

abstract class SmallPaddings {
  static const EdgeInsets zero = EdgeInsets.zero;
  static const EdgeInsets all = EdgeInsets.all(8);
  static const EdgeInsets only = EdgeInsets.only(left: 8, right: 8);
  static const EdgeInsets onlyTop = EdgeInsets.only(top: 8);
  static const EdgeInsets onlyBottom = EdgeInsets.only(bottom: 8);
  static const EdgeInsets onlyLeft = EdgeInsets.only(left: 8);
  static const EdgeInsets onlyRight = EdgeInsets.only(right: 8);
  static const EdgeInsets onlyTopBottom = EdgeInsets.only(top: 8, bottom: 8);
  static const EdgeInsets onlyLeftRight = EdgeInsets.only(left: 8, right: 8);
  static const EdgeInsets onlyTopLeft = EdgeInsets.only(top: 8, left: 8);
  static const EdgeInsets onlyTopRight = EdgeInsets.only(top: 8, right: 8);
  static const EdgeInsets onlyBottomLeft = EdgeInsets.only(bottom: 8, left: 8);
  static const EdgeInsets onlyBottomRight =
      EdgeInsets.only(bottom: 8, right: 8);
}

abstract class ResponsiveSize {
  static double get height =>
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;
  static double get width =>
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
}

abstract class ResponsiveWidthHeightSizes {
  static double get height => ResponsiveSize.height;
  static double get width => ResponsiveSize.width;
  static double get heightHalf => ResponsiveSize.height / 2;
  static double get widthHalf => ResponsiveSize.width / 2;
  static double get heightThird => ResponsiveSize.height / 3;
  static double get widthThird => ResponsiveSize.width / 3;
  static double get heightQuarter => ResponsiveSize.height / 4;
  static double get widthQuarter => ResponsiveSize.width / 4;
  static double get heightFifth => ResponsiveSize.height / 5;
  static double get widthFifth => ResponsiveSize.width / 5;
  static double get heightSixth => ResponsiveSize.height / 6;
  static double get widthSixth => ResponsiveSize.width / 6;
  static double get heightSeventh => ResponsiveSize.height / 7;
  static double get widthSeventh => ResponsiveSize.width / 7;
  static double get heightEighth => ResponsiveSize.height / 8;
  static double get widthEighth => ResponsiveSize.width / 8;
  static double get heightNinth => ResponsiveSize.height / 9;
  static double get widthNinth => ResponsiveSize.width / 9;
  static double get heightTenth => ResponsiveSize.height / 10;
  static double get widthTenth => ResponsiveSize.width / 10;
}

abstract class CustomBorderRadius {
  static BorderRadius primaryBorderRadius = BorderRadius.circular(8);
  static const BorderRadius all = BorderRadius.all(Radius.circular(8));
  static const BorderRadius only = BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
    bottomLeft: Radius.circular(8),
    bottomRight: Radius.circular(8),
  );
  static const BorderRadius onlyTopLeft = BorderRadius.only(
    topLeft: Radius.circular(8),
  );
  static const BorderRadius onlyTopRight = BorderRadius.only(
    topRight: Radius.circular(8),
  );
  static const BorderRadius onlyBottomLeft = BorderRadius.only(
    bottomLeft: Radius.circular(8),
  );
  static const BorderRadius onlyBottomRight = BorderRadius.only(
    bottomRight: Radius.circular(8),
  );
  static const BorderRadius onlyTop = BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
  );
  static const BorderRadius onlyBottom = BorderRadius.only(
    bottomLeft: Radius.circular(8),
    bottomRight: Radius.circular(8),
  );
  static const BorderRadius onlyLeft = BorderRadius.only(
    topLeft: Radius.circular(8),
    bottomLeft: Radius.circular(8),
  );
  static const BorderRadius onlyRight = BorderRadius.only(
    topRight: Radius.circular(8),
    bottomRight: Radius.circular(8),
  );
}

abstract class CustomTextStyles {
  static const TextStyle primaryTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: CupertinoColors.black,
  );
  static const TextStyle secondaryTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: CupertinoColors.black,
  );
  static const TextStyle tertiaryTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: CupertinoColors.white,
  );
}
