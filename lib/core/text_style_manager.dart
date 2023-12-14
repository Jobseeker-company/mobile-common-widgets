import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/font_family_constant.dart';

class TextStyleManager {
  static TextStyle largeTitle({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.robotto;
    const double defaultFontSize = 32;
    const double defaultLetterSpacing = 32;
    const double defaultLineHeight = 41;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing ?? defaultLetterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle title1({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextOverflow? overflow,
  }) {
    String defaultFontFamily = FontFamilyConstant.defaultFontFamily;
    const double defaultFontSize = 28;
    const double defaultLineHeight = 34;
    const double defaultLetterSpacing = 0.364;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing ?? defaultLetterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      overflow: overflow,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle title3({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextOverflow? overflow,
  }) {
    String defaultFontFamily = FontFamilyConstant.defaultFontFamily;
    const double defaultFontSize = 17;
    const double defaultLineHeight = 24;
    const double defaultLetterSpacing = 0.38;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w600;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing ?? defaultLetterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      overflow: overflow,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle headline({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.defaultFontFamily;
    const double defaultFontSize = 14;
    const double defaultLineHeight = 22;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w600;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle headlineLarge({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.robotto;
    const double defaultFontSize = 32;
    const double defaultLineHeight = 40;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle subheadline({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.defaultFontFamily;
    const double defaultFontSize = 14;
    const double defaultLineHeight = 20;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle mainText({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.robotto;
    const double defaultFontSize = 20;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle bodySmall({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.defaultFontFamily;
    const double defaultFontSize = 14;
    const double defaultLineHeight = 22;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle hierarchy2({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.defaultFontFamily;
    const double defaultFontSize = 16;
    const double defaultLineHeight = 20;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle bodyLarge({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.robotto;
    const double defaultFontSize = 16;
    const double defaultLineHeight = 24;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle labelLarge({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.robotto;
    const double defaultFontSize = 14;
    const double defaultLineHeight = 18;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w500;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle labelMedium({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.defaultFontFamily;
    const double defaultFontSize = 14;
    const double defaultLineHeight = 17;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w500;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle footNote({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.defaultFontFamily;
    const double defaultFontSize = 13;
    const double defaultLineHeight = 18;
    const double defaultLetterSpacing = -0.08;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w500;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing ?? defaultLetterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle caption2({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.defaultFontFamily;
    const double defaultFontSize = 10;
    const double defaultLineHeight = 13;
    const double defaultLetterSpacing = 0.08;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing ?? defaultLetterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }

  static TextStyle caption1({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.defaultFontFamily;
    const double defaultFontSize = 12;
    const double defaultLineHeight = 16;
    const Color defaultColor = Colors.black;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height ?? defaultLineHeight / defaultFontSize,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      package: "mobile_common_widgets",
    );
  }
}

class InputStyleManager {
  static InputDecoration getStyle(String placeholder) {
    return InputDecoration(
      disabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFB2B2B2),
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFE4007E),
        ),
      ),
      hintText: placeholder,
    );
  }
}
