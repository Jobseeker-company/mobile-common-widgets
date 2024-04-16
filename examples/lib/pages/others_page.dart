import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/enum.dart';
import 'package:mobile_common_widgets/core/input_decoration_manager.dart';
import 'package:mobile_common_widgets/others/location_page.dart';

class OthersPage extends StatelessWidget {
  const OthersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController addressController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Others"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: addressController,
                decoration: InputDecorationManager.appStyle.copyWith(
                  hintText: "Select Adress",
                ),
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationPage(
                        product: Product.app,
                        locale: 'en',
                        onSubmitted: (value) {
                          addressController.text =
                              '${value['province_name']}, ${value['city_name']}';
                          log("provinceResult = $value");
                        },
                      ),
                    ),
                  );
                },
                readOnly: true,
                onChanged: (value) {},
                validator: (String? text) {
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
