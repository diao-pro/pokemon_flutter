import 'package:flutter/material.dart';

class MyThemeData {
  final Color indicatorColor;
  final Color seedColor;
  final Color primaryColor;
  final Color drawerBackgroundColor;
  final Color? iconDrawerColor;

  const MyThemeData(
      {required this.indicatorColor,
      required this.seedColor,
      required this.primaryColor,
      this.drawerBackgroundColor = const Color(0xFFE3F2FD),
      this.iconDrawerColor});

  ThemeData get themeData {
    return ThemeData(
      indicatorColor: indicatorColor,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 22,
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        primary: primaryColor,
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: drawerBackgroundColor,
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: iconDrawerColor ?? indicatorColor,
        ),
      ),
    );
  }
}
