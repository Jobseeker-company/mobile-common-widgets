import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/mobile_common_widgets.dart';

import '/core/color_manager.dart';
import '/core/enum.dart';
import '/core/text_style_manager.dart';

class JSRoundedButton extends StatelessWidget {
  final Product product;
  final void Function()? onPressed;
  final String text;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final bool isLoading;
  const JSRoundedButton({
    Key? key,
    required this.product,
    required this.onPressed,
    required this.text,
    this.textStyle,
    this.width,
    this.height,
    this.margin,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          backgroundColor: (product == Product.app)
              ? ColorManager.primaryPink700
              : ColorManager.primaryBlue700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: isLoading
            ? const Center(child: CircularProgressIndicator.adaptive())
            : Text(
                text,
                style: textStyle ??
                    TextStyleManager.bodyLarge(color: Colors.white),
              ),
      ),
    );
  }
}
