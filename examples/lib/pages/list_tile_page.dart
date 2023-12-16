import 'package:flutter/material.dart';

import 'chat_list_tile_page.dart';
import 'notif_list_tile_page.dart';

import '/widgets/custom_button.dart';

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
