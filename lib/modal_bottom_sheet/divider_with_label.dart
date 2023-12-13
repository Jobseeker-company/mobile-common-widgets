import 'package:flutter/material.dart';

class DividerWithLabel extends StatelessWidget {
  const DividerWithLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
            endIndent: 1,
            indent: 1,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            label,
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        const Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
            endIndent: 1,
            indent: 1,
          ),
        ),
      ],
    );
  }
}
