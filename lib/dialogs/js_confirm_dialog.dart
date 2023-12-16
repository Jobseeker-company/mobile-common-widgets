import 'package:flutter/material.dart';

import '/anims/animation.dart';
import '/dialogs/js_dialog.dart';

class JSConfirmDialog extends JSDialog {
  final Widget content;
  final String bodyText;
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonColor;
  final Color outlinedButtonColor;
  final String outlinedButtonText;
  final Color outlinedButtonTextColor;
  final EdgeInsets? padding;
  final Function()? onPressed;
  final Function()? onOutlinedButtonPressed;

  /// ![](https://github-production-user-asset-6210df.s3.amazonaws.com/58515206/289240761-703b4dae-02eb-4807-9f42-28ea8006bf72.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231209%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231209T062427Z&X-Amz-Expires=300&X-Amz-Signature=21620f3465b35e712fcbef3209fc410d0fc52bea171e9a17dfd71ccf6554c443&X-Amz-SignedHeaders=host&actor_id=58515206&key_id=0&repo_id=658545639)
  const JSConfirmDialog(
    BuildContext context, {
    AnimType animType = AnimType.scale,
    required this.content,
    required this.bodyText,
    required this.buttonText,
    required this.outlinedButtonText,
    this.padding,
    this.onPressed,
    this.onOutlinedButtonPressed,
    this.buttonTextColor = Colors.white,
    this.outlinedButtonTextColor = Colors.red,
    this.buttonColor = Colors.red,
    this.outlinedButtonColor = Colors.red,
  }) : super(context, animType: animType);

  @override
  Widget buildDialog() {
    return _DialogWidget(
      content: content,
      padding: padding,
      onPressed: onPressed,
      onOutlinedButtonPressed: onOutlinedButtonPressed,
      bodyText: bodyText,
      buttonText: buttonText,
      buttonColor: buttonColor,
      outlinedButtonColor: outlinedButtonColor,
      outlinedButtonText: outlinedButtonText,
      buttonTextColor: buttonTextColor,
      outlinedButtonTextColor: outlinedButtonTextColor,
    );
  }
}

class _DialogWidget extends StatelessWidget {
  final EdgeInsets? padding;
  final Function()? onPressed;
  final Function()? onOutlinedButtonPressed;
  final Widget content;
  final String buttonText;
  final Color buttonTextColor;
  final Color outlinedButtonColor;
  final Color outlinedButtonTextColor;
  final String outlinedButtonText;
  final String bodyText;

  final Color buttonColor;
  const _DialogWidget({
    this.padding,
    this.onPressed,
    this.onOutlinedButtonPressed,
    required this.content,
    required this.bodyText,
    required this.buttonText,
    required this.outlinedButtonText,
    required this.buttonColor,
    required this.outlinedButtonColor,
    required this.buttonTextColor,
    required this.outlinedButtonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // content
            content,
            const SizedBox(
              height: 8.0,
            ),
            // text
            Text(
              bodyText,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 12.0,
            ),
            // button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                ),
                onPressed: onPressed ?? () => Navigator.pop(context),
                child: Text(
                  buttonText,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: buttonTextColor),
                ),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            SizedBox(
              height: 41,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(
                    width: 1.0,
                    color: outlinedButtonColor,
                  ),
                ),
                onPressed:
                    onOutlinedButtonPressed ?? () => Navigator.pop(context),
                child: Text(
                  outlinedButtonText,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: outlinedButtonTextColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
