import 'package:flutter/material.dart';
import '/modal_bottom_sheet/js_bottom_sheet.dart';

class JSBareBottomSheet extends JSBottomSheet {
  final List<Widget> children;
  final double? height;

  /// ![](https://github-production-user-asset-6210df.s3.amazonaws.com/58515206/289458896-7d362b87-a76d-4281-80a3-9636695307f2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231211%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231211T134601Z&X-Amz-Expires=300&X-Amz-Signature=4b1fefce4b8704213adb81f4ebe5bd87f8858d54d3638d9fd0c752416a6a56d3&X-Amz-SignedHeaders=host&actor_id=58515206&key_id=0&repo_id=658545639)
  const JSBareBottomSheet(
    BuildContext context, {
    required this.children,
    this.height,
  }) : super(context);

  @override
  Widget buildBottomSheet() {
    return _BottomSheetWidget(children, height);
  }
}

class _BottomSheetWidget extends StatelessWidget {
  final List<Widget> children;
  final double? height;
  const _BottomSheetWidget(
    this.children,
    this.height,
  );

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
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
