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

class ToggleablePillButtonStyle
    extends ThemeExtension<ToggleablePillButtonStyle> {
  final Color? outlineColor;
  final Color? fillColor;
  final Color? fillTextColor;

  const ToggleablePillButtonStyle({
    this.outlineColor,
    this.fillColor,
    this.fillTextColor,
  });

  @override
  ThemeExtension<ToggleablePillButtonStyle> copyWith({
    Color? outlineColor,
    Color? fillColor,
    Color? fillTextColor,
  }) {
    return ToggleablePillButtonStyle(
      outlineColor: outlineColor ?? this.outlineColor,
      fillColor: fillColor ?? this.fillColor,
      fillTextColor: fillTextColor ?? this.fillTextColor,
    );
  }

  @override
  ToggleablePillButtonStyle lerp(
    ThemeExtension<ToggleablePillButtonStyle>? other,
    double t,
  ) {
    if (other is! ToggleablePillButtonStyle) {
      return this;
    }

    return ToggleablePillButtonStyle(
      fillColor: Color.lerp(fillColor, other.fillColor, t),
      fillTextColor: Color.lerp(fillTextColor, other.fillTextColor, t),
      outlineColor: Color.lerp(outlineColor, other.outlineColor, t),
    );
  }
}
