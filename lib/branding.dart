import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  primarySwatch: Colors.green,
  bannerTheme: const MaterialBannerThemeData(
    backgroundColor: Colors.black,
  ),
);

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  bannerTheme: const MaterialBannerThemeData(
    backgroundColor: Colors.red,
  ),
);
