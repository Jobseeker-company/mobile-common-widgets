import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/color_manager.dart';

class InputDecorationManager {
  static InputDecoration appStyle = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorManager.primaryPink700,
      ),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorManager.disableAndConstrast,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorManager.primaryPink700,
      ),
    ),
    hintStyle: TextStyle(
      fontSize: 14,
      color: ColorManager.disableAndConstrast,
    ),
  );

  static InputDecoration partnerStyle = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorManager.primaryBlue700,
      ),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorManager.disableAndConstrast,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorManager.primaryBlue700,
      ),
    ),
    hintStyle: TextStyle(
      fontSize: 14,
      color: ColorManager.disableAndConstrast,
    ),
  );
}
