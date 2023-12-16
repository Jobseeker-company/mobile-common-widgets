import 'package:flutter/material.dart';

import '/core/color_manager.dart';
import '/core/enum.dart';
import '/core/text_style_manager.dart';

import '/modal_bottom_sheet/js_bottom_sheet.dart';

class JSGeneralBottomSheet extends JSBottomSheet {
  final Product product;
  final Widget content;
  final String titleText;
  final String bodyText;
  final String buttonText;
  final Color buttonTextColor;
  final double? height;
  final Function()? onPressed;

  /// ![](https://github-production-user-asset-6210df.s3.amazonaws.com/58515206/289459281-626c481e-f348-495c-b6f7-6525de70aa35.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231211%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231211T134737Z&X-Amz-Expires=300&X-Amz-Signature=49fdcf8609541f6216a5dfe5ffda0ca1470c9c0e0439111348bbc040e6f01f2f&X-Amz-SignedHeaders=host&actor_id=58515206&key_id=0&repo_id=658545639)
  const JSGeneralBottomSheet(
    BuildContext context, {
    bool barrierDismissible = true,
    String? barrierLabel,
    Color? barrierColor,
    required this.product,
    required this.content,
    required this.bodyText,
    required this.titleText,
    required this.buttonText,
    this.height,
    this.onPressed,
    this.buttonTextColor = Colors.white,
  }) : super(context);

  @override
  Widget buildBottomSheet() {
    return _BottomSheetWidget(
      onPressed: onPressed,
      height: height,
      content: content,
      bodyText: bodyText,
      titleText: titleText,
      buttonText: buttonText,
      buttonTextColor: buttonTextColor,
      product: product,
    );
  }
}

class _BottomSheetWidget extends StatelessWidget {
  final Product product;
  final Function()? onPressed;
  final Widget content;
  final double? height;
  final String buttonText;
  final String bodyText;
  final String titleText;
  final Color buttonTextColor;
  const _BottomSheetWidget({
    this.onPressed,
    this.height,
    required this.product,
    required this.content,
    required this.bodyText,
    required this.buttonText,
    required this.titleText,
    required this.buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      height: height ?? 325,
      child: Column(
        children: [
          const SizedBox(
            height: 25.0,
          ),
          Container(
            height: 4,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xff535353),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  content,
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    titleText,
                    style: TextStyleManager.title3(),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    bodyText,
                    style: TextStyleManager.bodyLarge(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  SizedBox(
                    height: 41,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: (product == Product.app)
                            ? ColorManager.primaryPink700
                            : ColorManager.primaryBlue700,
                      ),
                      onPressed: onPressed ?? () => Navigator.pop(context),
                      child: Text(
                        buttonText,
                        style: TextStyleManager.bodyLarge(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
