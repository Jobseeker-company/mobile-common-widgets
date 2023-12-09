import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/anims/animation.dart';

abstract class JSDialog {
  final BuildContext context;
  final AnimType animType;
  final bool? barrierDismissible;
  final String? barrierLabel;
  final Color? barrierColor;

  const JSDialog(
    this.context, {
    this.barrierDismissible,
    this.barrierLabel,
    this.barrierColor,
    this.animType = AnimType.scale,
  });

  Widget _showAnimation(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    switch (animType) {
      case AnimType.rightSlide:
        return AnimationTransition.fromRight(
          animation,
          secondaryAnimation,
          child,
        );
      case AnimType.leftSlide:
        return AnimationTransition.fromLeft(
          animation,
          secondaryAnimation,
          child,
        );
      case AnimType.topSlide:
        return AnimationTransition.fromTop(
          animation,
          secondaryAnimation,
          child,
        );
      case AnimType.bottomSlide:
        return AnimationTransition.fromBottom(
          animation,
          secondaryAnimation,
          child,
        );
      case AnimType.scale:
        return AnimationTransition.scale(
          animation,
          secondaryAnimation,
          child,
        );
    }
  }

  Widget buildDialog();

  Future<dynamic> show() => showGeneralDialog(
        barrierDismissible: barrierDismissible ?? true,
        barrierLabel: barrierLabel ?? "",
        barrierColor: barrierColor ?? const Color(0x80000000),
        context: context,
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (
          BuildContext buildContext,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return buildDialog();
        },
        transitionBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) =>
            _showAnimation(animation, secondaryAnimation, child),
      );
}
