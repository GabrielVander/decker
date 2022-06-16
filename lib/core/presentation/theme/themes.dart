import 'package:decker/core/presentation/theme/extensions.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
  extensions: <ThemeExtension<dynamic>>[
    DeckerTextStyle(
      appNameStyle:
          ThemeData.light().textTheme.titleLarge!.copyWith(fontSize: 40.0),
      sectionNameStyle: ThemeData.light().textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
    ),
  ],
);
