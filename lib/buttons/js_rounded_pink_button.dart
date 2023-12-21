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
  final bool? isOutlined;
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
    this.isOutlined,
    this.outlinedColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool thisOutlined = false;
    if (isOutlined != null) {
      thisOutlined = isOutlined!;
    }
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          backgroundColor: thisOutlined
              ? outlinedColor == Colors.white
                  ? Colors.grey.withOpacity(0.5)
                  : Colors.white
              : null,
          side: thisOutlined
              ? BorderSide(
                  width: 1.0,
                  color: outlinedColor ?? Theme.of(context).primaryColor)
              : null,
        ),
        child: isLoading
            ? Center(
                child: SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).primaryColor,
                ),
              ))
            : Text(
                text,
                style: textStyle ??
                    TextStyleManager.bodyLarge(
                      color: thisOutlined
                          ? outlinedColor ?? Theme.of(context).primaryColor
                          : Colors.white,
                    ),
              ),
      ),
    );
  }
}
