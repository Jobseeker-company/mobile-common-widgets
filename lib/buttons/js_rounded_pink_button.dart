import 'package:flutter/material.dart';
import '/core/text_style_manager.dart';

class JSDefaultColorButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final bool isLoading;
  final bool isOutlined;
  final Color? outlinedColor;
  const JSDefaultColorButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textStyle,
    this.width,
    this.height,
    this.margin,
    this.isLoading = false,
    required this.isOutlined,
    this.outlinedColor,
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
          backgroundColor: isOutlined
              ? outlinedColor == Colors.white
                  ? Colors.grey.withOpacity(0.5)
                  : Colors.white
              : null,
          side: isOutlined
              ? BorderSide(
                  width: 1.0,
                  color: outlinedColor ?? Theme.of(context).primaryColor)
              : null,
        ),
        child: isLoading
            ? const Center(child: CircularProgressIndicator.adaptive())
            : Text(
                text,
                style: textStyle ??
                    TextStyleManager.bodyLarge(
                      color: isOutlined
                          ? outlinedColor ?? Theme.of(context).primaryColor
                          : Colors.white,
                    ),
              ),
      ),
    );
  }
}
