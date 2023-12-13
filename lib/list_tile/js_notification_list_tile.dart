import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/color_extention.dart';
import 'package:mobile_common_widgets/core/enum.dart';
import 'package:mobile_common_widgets/core/text_style_manager.dart';

class JsNotificationListTile extends StatelessWidget {
  final Function() onTap;
  final Product product;
  final bool isRead;
  final String notifTitle;
  final String notifContent;
  final String logo;
  final DateTime? date;
  const JsNotificationListTile({
    super.key,
    required this.onTap,
    required this.product,
    required this.isRead,
    required this.notifTitle,
    required this.notifContent,
    required this.logo,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: isRead ? const Color(0xFFFFFFFF) : HexColor.fromHex('#E6F3FF'),
      minVerticalPadding: 12,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      leading: SizedBox(
        width: 60,
        child: Row(
          children: [
            if (!isRead)
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (product == Product.app)
                      ? HexColor.fromHex('#E4007E')
                      : HexColor.fromHex('#050774'),
                ),
              )
            else
              const SizedBox(
                width: 6.0,
              ),
            const SizedBox(
              width: 5.0,
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CachedNetworkImage(
                  imageUrl: logo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      trailing: SizedBox(
        height: 100,
        child: Icon(
          Icons.chevron_right,
          size: 28,
          color: HexColor.fromHex('#393938'),
        ),
      ),
      title: Text.rich(
        TextSpan(
          text: notifTitle,
          style: TextStyleManager.bodySmall(
            fontWeight: FontWeight.w600,
            height: 1.4,
          ),
          children: [
            TextSpan(
              text: ' $notifContent',
              style: TextStyleManager.bodySmall(
                height: 1.4,
              ),
            ),
            if (date != null)
              TextSpan(
                text: '\n$date',
                style: TextStyleManager.caption1(
                  height: 2,
                  color: HexColor.fromHex('#777675'),
                ),
              ),
          ],
        ),
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
