import 'package:flutter/material.dart';

abstract class JSBottomSheet {
  final BuildContext context;
  final bool? isDismissible;
  final bool? enableDrag;
  final String? barrierLabel;
  final Color? backgroundColor;
  final ShapeBorder? shape;

  const JSBottomSheet(
    this.context, {
    this.isDismissible,
    this.enableDrag,
    this.barrierLabel,
    this.backgroundColor,
    this.shape,
  });

  Widget buildBottomSheet();

  Future<dynamic> show() => showModalBottomSheet(
        isDismissible: isDismissible ?? true,
        backgroundColor: backgroundColor,
        enableDrag: enableDrag ?? true,
        shape: shape,
        context: context,
        builder: (context) {
          return buildBottomSheet();
        },
      );
}
