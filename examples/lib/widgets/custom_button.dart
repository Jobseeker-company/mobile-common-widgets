import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final TextStyle? style;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: style ??
                Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
