import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mobile_common_widgets/core/color_manager.dart';
import 'package:mobile_common_widgets/core/font_family_constant.dart';

import '../core/text_style_manager.dart';
import '/core/enum.dart';

class SavedAccountItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastActive;
  final bool isLastItem;
  final Widget trailing;
  final Product product;
  final Function() onTap;

  const SavedAccountItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.lastActive,
    required this.isLastItem,
    required this.trailing,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ListTile(
          imageUrl: imageUrl,
          name: name,
          lastActive: lastActive,
          trailing: trailing,
          onTap: onTap,
        ),
        if (!isLastItem)
          Container(
            width: double.infinity,
            color: (product == Product.app)
                ? ColorManager.primaryPink700
                : ColorManager.primaryBlue700,
            height: 1,
          ),
        if (!isLastItem)
          const SizedBox(
            height: 7.0,
          ),
      ],
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.lastActive,
    required this.trailing,
    required this.onTap,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final String lastActive;
  final Widget trailing;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Container(
        height: 49,
        width: 49,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) {
              return Container(
                color: Colors.red,
                width: 50,
                height: 50,
              );
            },
          ),
        ),
      ),
      title: Text(
        name,
        style: TextStyleManager.mainText(
          fontWeight: FontWeight.normal,
        ),
        overflow: TextOverflow.clip,
        maxLines: 1,
      ),
      subtitle: Text(
        lastActive,
        style: TextStyleManager.mainText(fontSize: 15),
        overflow: TextOverflow.clip,
        maxLines: 1,
      ),
      trailing: trailing,
    );
  }
}
