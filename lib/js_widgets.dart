library mobile_common_widgets;

import 'package:flutter/material.dart';

class JSInfoDialog {
  final BuildContext context;
  final Widget image;
  final String bodyText;
  final String buttonText;
  final Color buttonColor;
  final EdgeInsets? padding;
  final Function()? onPressed;
  const JSInfoDialog(
    this.context, {
    required this.image,
    required this.bodyText,
    required this.buttonText,
    this.padding,
    this.onPressed,
    this.buttonColor = Colors.red,
  });

  Future<dynamic> show() => showDialog(
        context: context,
        builder: (context) {
          return _DialogWidget(
            padding: padding,
            buttonColor: buttonColor,
            image: image,
            bodyText: bodyText,
            buttonText: buttonText,
            onPressed: onPressed,
          );
        },
      );
}

class _DialogWidget extends StatelessWidget {
  final EdgeInsets? padding;
  final Function()? onPressed;
  final Widget image;
  final String buttonText;
  final String bodyText;

  final Color buttonColor;
  const _DialogWidget({
    this.padding,
    this.onPressed,
    required this.image,
    required this.bodyText,
    required this.buttonText,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // image
            image,
            const SizedBox(
              height: 8.0,
            ),
            // text
            Text(
              bodyText,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 8.0,
            ),
            // button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed ?? () => Navigator.pop(context),
                child: Text(
                  buttonText,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
