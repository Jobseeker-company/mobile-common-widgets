import 'package:examples/pages/chat_list_tile_page.dart';
import 'package:examples/pages/notif_list_tile_page.dart';
import 'package:examples/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/enum.dart';
import 'package:mobile_common_widgets/list_tile/js_notification_list_tile.dart';

class ListTilePage extends StatelessWidget {
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatListTilePage(),
                    ),
                  );
                },
                text: "Chat List Tile",
              ),
              CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationListTilePage(),
                    ),
                  );
                },
                text: "Notification List Tile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
