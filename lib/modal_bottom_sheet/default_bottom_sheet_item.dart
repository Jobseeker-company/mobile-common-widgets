import 'package:flutter/material.dart';

class DefaultBottomSheetItem extends StatelessWidget {
  final Widget leading;
  final String title;

  /// ![](https://github-production-user-asset-6210df.s3.amazonaws.com/58515206/289459691-9a767330-e739-40e5-b6b5-34d59b3847ba.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231211%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231211T134436Z&X-Amz-Expires=300&X-Amz-Signature=af99be8db1db1caa5397084fa31d16ccda334b98ec3c7b142ba3604780b7e126&X-Amz-SignedHeaders=host&actor_id=58515206&key_id=0&repo_id=658545639)
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
