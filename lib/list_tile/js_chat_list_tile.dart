import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/asset_manager.dart';
import 'package:mobile_common_widgets/core/color_manager.dart';
import 'package:mobile_common_widgets/core/text_style_manager.dart';

class JSChatListTile extends StatelessWidget {
  final Function() onTap;
  final String logo;
  final String title;
  final Widget typingStatusWidget;
  final Widget unreadStatus;
  final String sendTime;
  final String totalNew;
  const JSChatListTile({
    super.key,
    required this.onTap,
    required this.logo,
    required this.title,
    required this.typingStatusWidget,
    required this.sendTime,
    required this.totalNew,
    required this.unreadStatus,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          const SizedBox(width: 24),
          Container(
            height: 50,
            width: 50,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: ColorManager.secondaryGrey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: logo,
              errorWidget: (context, url, error) => Image.asset(
                '${AssetManager.imagePath}/default_company_logo.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: .9,
                    color: ColorManager.primaryBlue100,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyleManager.headline(fontSize: 17),
                        ),
                        typingStatusWidget,
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          sendTime,
                          style: TextStyleManager.labelMedium(
                            fontSize: 13,
                            height: 0,
                            color: ColorManager.black4,
                          ),
                        ),
                        const SizedBox(height: 6),
                        unreadStatus,
                        const SizedBox()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
