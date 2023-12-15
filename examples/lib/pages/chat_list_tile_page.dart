import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/color_manager.dart';
import 'package:mobile_common_widgets/core/enum.dart';
import 'package:mobile_common_widgets/core/text_style_manager.dart';
import 'package:mobile_common_widgets/list_tile/js_chat_list_tile.dart';
import 'package:mobile_common_widgets/list_tile/js_notification_list_tile.dart';

class ChatListTilePage extends StatelessWidget {
  const ChatListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modal Bottom Sheet"),
      ),
      body: Column(
        children: [
          JSChatListTile(
            onTap: () {},
            logo:
                'https://cdn.discordapp.com/attachments/856786757516918784/1152763696142090280/istockphoto-537289161-612x612.jpeg?ex=65877bda&is=657506da&hm=5d1eda32f581e831689c025b4441666883365de09000eb5a5dbae31cfa117e39&',
            title: 'notiftitle',
            typingStatusWidget: Text('Hallo'),
            sendTime: '09:59',
            totalNew: '1',
            unreadStatus: Text('Hallo'),
          ),
          JSChatListTile(
            onTap: () {},
            logo:
                'https://cdn.discordapp.com/attachments/856786757516918784/1152763696142090280/istockphoto-537289161-612x612.jpeg?ex=65877bda&is=657506da&hm=5d1eda32f581e831689c025b4441666883365de09000eb5a5dbae31cfa117e39&',
            title: 'notiftitle',
            typingStatusWidget: Text('Typing'),
            sendTime: '09:59',
            totalNew: '1',
            unreadStatus: Text('Hallo'),
          ),
          JSChatListTile(
            onTap: () {},
            logo:
                'https://cdn.discordapp.com/attachments/856786757516918784/1152763696142090280/istockphoto-537289161-612x612.jpeg?ex=65877bda&is=657506da&hm=5d1eda32f581e831689c025b4441666883365de09000eb5a5dbae31cfa117e39&',
            title: 'notiftitle',
            typingStatusWidget: Text('Typing'),
            sendTime: '09:59',
            totalNew: '1',
            unreadStatus: Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorManager.primaryDarkBlue,
                shape: BoxShape.circle,
              ),
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style: TextStyleManager.caption1(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
