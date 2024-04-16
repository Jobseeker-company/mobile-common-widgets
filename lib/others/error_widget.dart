import 'package:flutter/material.dart';

import '../buttons/js_default_color_button.dart';
import '../core/color_manager.dart';
import '../core/text_style_manager.dart';

class CustomErrorWidget extends StatelessWidget {
  final Function() onPressed;
  final String errorMessage;
  final String locale;
  const CustomErrorWidget({
    Key? key,
    required this.errorMessage,
    required this.onPressed,
    required this.locale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.warning_rounded,
          size: 125,
          color: ColorManager.primaryPink700,
        ),
        const SizedBox(height: 20),
        Text(
          (locale == "en")
              ? "Ops! There is a problem on the server!"
              : "Duh ada masalah di server!",
          style: TextStyleManager.bodyLarge(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 300,
          child: JSDefaultColorButton(
            onPressed: onPressed,
            text: "Refresh",
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          errorMessage,
          maxLines: 2,
          style: TextStyleManager.caption2(
            color: ColorManager.disableAndConstrast,
          ),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
