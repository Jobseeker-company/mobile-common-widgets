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

  Future<T?> show<T>() => showModalBottomSheet<T?>(
        isDismissible: isDismissible ?? true,
        backgroundColor: backgroundColor,
        enableDrag: enableDrag ?? true,
        isScrollControlled: true,
        shape: shape ??
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
        context: context,
        builder: (context) {
          return buildBottomSheet();
        },
      );
}
