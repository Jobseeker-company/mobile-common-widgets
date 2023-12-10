import 'package:flutter/material.dart';

class DefaultBottomSheetItem extends StatelessWidget {
  final Widget leading;
  final String title;
  const DefaultBottomSheetItem({
    Key? key,
    required this.leading,
    required this.title,
    required this.onPresssed,
  }) : super(key: key);

  final void Function()? onPresssed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF5F8F9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          elevation: 0.0,
        ),
        onPressed: onPresssed,
        child: Row(
          children: [
            leading,
            const SizedBox(
              width: 12,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ));
  }
}
