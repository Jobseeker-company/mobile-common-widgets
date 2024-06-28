import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/color_manager.dart';
import 'package:mobile_common_widgets/core/enum.dart';
import '../core/text_style_manager.dart';
import '/anims/animation.dart';
import '/dialogs/js_dialog.dart';

class JSInfoDialog extends JSDialog {
  final Product? product;
  final Widget content;
  final String bodyText;
  final String buttonText;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final EdgeInsets? padding;
  final Function()? onPressed;

  /// ![](https://github-production-user-asset-6210df.s3.amazonaws.com/58515206/289015917-e531af67-39ca-4da9-a257-d201b5b22d71.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231209%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231209T053109Z&X-Amz-Expires=300&X-Amz-Signature=e9d22f91746c79032d5c19731d3667bf81371f2424d7d9edf5e1c3234dcf905f&X-Amz-SignedHeaders=host&actor_id=58515206&key_id=0&repo_id=658545639)
  const JSInfoDialog(
    BuildContext context, {
    bool barrierDismissible = true,
    String? barrierLabel,
    Color? barrierColor,
    AnimType animType = AnimType.scale,
    required this.content,
    required this.bodyText,
    required this.buttonText,
    this.product,
    this.padding,
    this.onPressed,
    this.buttonColor,
    this.buttonTextColor,
  }) : super(
          context,
          barrierDismissible: barrierDismissible,
          barrierLabel: barrierLabel,
          barrierColor: barrierColor,
          animType: animType,
        );

  @override
  Widget buildDialog() {
    return _DialogWidget(
      content: content,
      padding: padding,
      onPressed: onPressed,
      bodyText: bodyText,
      buttonText: buttonText,
      buttonColor: buttonColor,
      buttonTextColor: buttonTextColor,
      product: product,
    );
  }
}

class _DialogWidget extends StatelessWidget {
  final Product? product;
  final EdgeInsets? padding;
  final Function()? onPressed;
  final Widget content;
  final String buttonText;
  final String bodyText;
  final Color? buttonColor;
  final Color? buttonTextColor;
  const _DialogWidget({
    this.padding,
    this.onPressed,
    this.product,
    required this.content,
    required this.bodyText,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
  });

  Color getButtonColor() {
    switch (product) {
      case Product.app:
        return ColorManager.primaryPink700;
      case Product.partners:
        return ColorManager.primaryBlue700;
      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
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
              style: TextStyleManager.bodyLarge(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 12.0,
            ),
            // button
            SizedBox(
              width: double.infinity,
              height: 41,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor ?? getButtonColor(),
                ),
                onPressed: onPressed ?? () => Navigator.pop(context),
                child: Text(
                  buttonText,
                  style: TextStyleManager.bodyLarge(
                    color: buttonTextColor ?? Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
