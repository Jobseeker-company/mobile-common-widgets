library mobile_common_widgets;

import 'package:flutter/material.dart';

class JSDialogWrapper extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final bool isFollowingChildHeight;
  const JSDialogWrapper({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.child,
    this.isFollowingChildHeight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: padding ?? const EdgeInsets.all(45.0),
        width: width ?? double.infinity,
        height: isFollowingChildHeight ? null : height ?? 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: child,
      ),
    );
  }
}
