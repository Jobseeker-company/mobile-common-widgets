import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/anims/animation.dart';
import 'package:mobile_common_widgets/modal_bottom_sheet/js_bottom_sheet.dart';

class JSGeneralBottomSheet extends JSBottomSheet {
  final Widget content;
  final String bodyText;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final EdgeInsets? padding;
  final Function()? onPressed;

  /// ![](https://github-production-user-asset-6210df.s3.amazonaws.com/58515206/289015917-e531af67-39ca-4da9-a257-d201b5b22d71.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231209%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231209T053109Z&X-Amz-Expires=300&X-Amz-Signature=e9d22f91746c79032d5c19731d3667bf81371f2424d7d9edf5e1c3234dcf905f&X-Amz-SignedHeaders=host&actor_id=58515206&key_id=0&repo_id=658545639)
  const JSGeneralBottomSheet(
    BuildContext context, {
    bool barrierDismissible = true,
    String? barrierLabel,
    Color? barrierColor,
    AnimType animType = AnimType.scale,
    required this.content,
    required this.bodyText,
    required this.buttonText,
    this.padding,
    this.onPressed,
    this.buttonColor = Colors.red,
    this.buttonTextColor = Colors.white,
  }) : super(context);

  @override
  Widget buildBottomSheet() {
    // TODO: implement buildBottomSheet
    throw UnimplementedError();
  }
}

class _DialogWidget extends StatelessWidget {
  final EdgeInsets? padding;
  final Function()? onPressed;
  final Widget content;
  final String buttonText;
  final String bodyText;
  final Color buttonColor;
  final Color buttonTextColor;
  const _DialogWidget({
    this.padding,
    this.onPressed,
    required this.content,
    required this.bodyText,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
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
              height: 8.0,
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
            )
          ],
        ),
      ),
    );
  }
}
