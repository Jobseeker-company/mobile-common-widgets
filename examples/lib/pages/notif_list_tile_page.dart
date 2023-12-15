import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/enum.dart';
import 'package:mobile_common_widgets/list_tile/js_notification_list_tile.dart';

class NotificationListTilePage extends StatelessWidget {
  const NotificationListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modal Bottom Sheet"),
      ),
      body: Column(
        children: [
          JsNotificationListTile(
            onTap: () {},
            product: Product.app,
            isRead: false,
            notifTitle: 'notifTitle',
            notifContent:
                'notifContent make a a random pargraf amake a random paragraf make a random paragraf',
            logo:
                'https://cdn.discordapp.com/attachments/856786757516918784/1152763696142090280/istockphoto-537289161-612x612.jpeg?ex=65877bda&is=657506da&hm=5d1eda32f581e831689c025b4441666883365de09000eb5a5dbae31cfa117e39&',
          ),
          JsNotificationListTile(
            onTap: () {},
            product: Product.app,
            isRead: true,
            notifTitle: 'notifTitle',
            notifContent:
                'notifContent make a a random pargraf amake a random paragraf make a random paragraf notifContent make a a random pargraf amake a random paragraf make a random paragraf',
            logo:
                'https://cdn.discordapp.com/attachments/856786757516918784/1152763696142090280/istockphoto-537289161-612x612.jpeg?ex=65877bda&is=657506da&hm=5d1eda32f581e831689c025b4441666883365de09000eb5a5dbae31cfa117e39&',
          ),
          JsNotificationListTile(
            onTap: () {},
            product: Product.app,
            isRead: false,
            notifTitle: 'notifTitle',
            notifContent:
                'notifContent make a a random pargraf amake a random paragraf make a random paragraf notifContent make a a random pargraf amake a random paragraf make a random paragraf',
            logo:
                'https://cdn.discordapp.com/attachments/856786757516918784/1152763696142090280/istockphoto-537289161-612x612.jpeg?ex=65877bda&is=657506da&hm=5d1eda32f581e831689c025b4441666883365de09000eb5a5dbae31cfa117e39&',
          )
        ],
      ),
    );
  }
}
