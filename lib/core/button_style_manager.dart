import 'package:flutter/material.dart';

class ButtonStyleManager {
  static ButtonStyle roundedPink({
    Color? foregroundColor,
    Color? backgroundColor,
    Color? disabledForegroundColor,
    Color? disabledBackgroundColor,
    Color? shadowColor,
    Color? surfaceTintColor,
    double? elevation,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    Size? minimumSize,
    Size? fixedSize,
    Size? maximumSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MouseCursor? enabledMouseCursor,
    MouseCursor? disabledMouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    InteractiveInkFeatureFactory? splashFactory,
  }) {
    const Color defaultBackgroundColor = Color(0xFFE4007E);
    final OutlinedBorder defaultShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    );
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor ?? defaultBackgroundColor,
      shape: shape ?? defaultShape,
      alignment: alignment,
      animationDuration: animationDuration,
      disabledBackgroundColor: disabledBackgroundColor,
      disabledForegroundColor: disabledForegroundColor,
      disabledMouseCursor: disabledMouseCursor,
      elevation: elevation,
      enableFeedback: enableFeedback,
      enabledMouseCursor: enabledMouseCursor,
      fixedSize: fixedSize,
      foregroundColor: foregroundColor,
      maximumSize: maximumSize,
      minimumSize: minimumSize,
      padding: padding,
      shadowColor: shadowColor,
      side: side,
      splashFactory: splashFactory,
      surfaceTintColor: surfaceTintColor,
      tapTargetSize: tapTargetSize,
      textStyle: textStyle,
      visualDensity: visualDensity,
    );
  }

  static ButtonStyle roundedOutlinedPink({
    Color? foregroundColor,
    Color? backgroundColor,
    Color? disabledForegroundColor,
    Color? disabledBackgroundColor,
    Color? shadowColor,
    Color? surfaceTintColor,
    double? elevation,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    Size? minimumSize,
    Size? fixedSize,
    Size? maximumSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MouseCursor? enabledMouseCursor,
    MouseCursor? disabledMouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    InteractiveInkFeatureFactory? splashFactory,
  }) {
    const Color defaultBackgroundColor = Colors.white;
    final OutlinedBorder defaultShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    );
    const BorderSide defaultBorderSide =
        BorderSide(width: 1.0, color: Color(0xFFE4007E));
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor ?? defaultBackgroundColor,
      shape: shape ?? defaultShape,
      alignment: alignment,
      animationDuration: animationDuration,
      disabledBackgroundColor: disabledBackgroundColor,
      disabledForegroundColor: disabledForegroundColor,
      disabledMouseCursor: disabledMouseCursor,
      elevation: elevation,
      enableFeedback: enableFeedback,
      enabledMouseCursor: enabledMouseCursor,
      fixedSize: fixedSize,
      foregroundColor: foregroundColor,
      maximumSize: maximumSize,
      minimumSize: minimumSize,
      padding: padding,
      shadowColor: shadowColor,
      side: side ?? defaultBorderSide,
      splashFactory: splashFactory,
      surfaceTintColor: surfaceTintColor,
      tapTargetSize: tapTargetSize,
      textStyle: textStyle,
      visualDensity: visualDensity,
    );
  }

  static ButtonStyle roundedOutlinedGrey({
    Color? foregroundColor,
    Color? backgroundColor,
    Color? disabledForegroundColor,
    Color? disabledBackgroundColor,
    Color? shadowColor,
    Color? surfaceTintColor,
    double? elevation,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    Size? minimumSize,
    Size? fixedSize,
    Size? maximumSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MouseCursor? enabledMouseCursor,
    MouseCursor? disabledMouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    InteractiveInkFeatureFactory? splashFactory,
  }) {
    const Color defaultBackgroundColor = Colors.white;
    final OutlinedBorder defaultShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    );
    const BorderSide defaultBorderSide =
        BorderSide(width: 1.0, color: Color(0xFF777675));
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor ?? defaultBackgroundColor,
      shape: shape ?? defaultShape,
      alignment: alignment,
      animationDuration: animationDuration,
      disabledBackgroundColor: disabledBackgroundColor,
      disabledForegroundColor: disabledForegroundColor,
      disabledMouseCursor: disabledMouseCursor,
      elevation: elevation,
      enableFeedback: enableFeedback,
      enabledMouseCursor: enabledMouseCursor,
      fixedSize: fixedSize,
      foregroundColor: foregroundColor,
      maximumSize: maximumSize,
      minimumSize: minimumSize,
      padding: padding,
      shadowColor: shadowColor,
      side: side ?? defaultBorderSide,
      splashFactory: splashFactory,
      surfaceTintColor: surfaceTintColor,
      tapTargetSize: tapTargetSize,
      textStyle: textStyle,
      visualDensity: visualDensity,
    );
  }
}
