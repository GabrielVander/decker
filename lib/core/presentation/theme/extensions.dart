import 'package:flutter/material.dart';

class DeckerTextStyle extends ThemeExtension<DeckerTextStyle> {
  final TextStyle? appNameStyle;
  final TextStyle? sectionNameStyle;

  const DeckerTextStyle({
    required this.appNameStyle,
    required this.sectionNameStyle,
  });

  @override
  ThemeExtension<DeckerTextStyle> copyWith({
    TextStyle? appNameStyle,
    TextStyle? sectionNameStyle,
  }) =>
      DeckerTextStyle(
        appNameStyle: appNameStyle ?? this.appNameStyle,
        sectionNameStyle: sectionNameStyle ?? this.sectionNameStyle,
      );

  @override
  DeckerTextStyle lerp(
    ThemeExtension<DeckerTextStyle>? other,
    double t,
  ) {
    if (other is! DeckerTextStyle) {
      return this;
    }

    return DeckerTextStyle(
      appNameStyle: TextStyle.lerp(appNameStyle, other.appNameStyle, t),
      sectionNameStyle:
          TextStyle.lerp(sectionNameStyle, other.sectionNameStyle, t),
    );
  }
}
