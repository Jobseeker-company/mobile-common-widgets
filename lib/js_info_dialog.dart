import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/anims/animation.dart';
import 'package:mobile_common_widgets/js_dialog.dart';

class JSInfoDialog extends JSDialog {
  final Widget content;
  final String bodyText;
  final String buttonText;
  final Color buttonColor;
  final EdgeInsets? padding;
  final Function()? onPressed;
  const JSInfoDialog(
    BuildContext context, {
    AnimType animType = AnimType.scale,
    required this.content,
    required this.bodyText,
    required this.buttonText,
    this.padding,
    this.onPressed,
    this.buttonColor = Colors.red,
  }) : super(context, animType: animType);

  @override
  Widget buildDialog() {
    return _DialogWidget(
      content: content,
      padding: padding,
      onPressed: onPressed,
      bodyText: bodyText,
      buttonText: buttonText,
      buttonColor: buttonColor,
    );
  }
}

class _DialogWidget extends StatelessWidget {
  final EdgeInsets? padding;
  final Function()? onPressed;
  final Widget content;
  final String buttonText;
  final String bodyText;

  final Color buttonColor;
  const _DialogWidget({
    this.padding,
    this.onPressed,
    required this.content,
    required this.bodyText,
    required this.buttonText,
    required this.buttonColor,
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
