import 'package:flutter/material.dart';
import '/core/text_style_manager.dart';

class JSDefaultButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final bool isLoading;
  final bool isOutlined;
  const JSDefaultButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textStyle,
    this.width,
    this.height,
    this.margin,
    this.isLoading = false,
    required this.isOutlined,
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
          backgroundColor: isOutlined ? Colors.white : null,
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
