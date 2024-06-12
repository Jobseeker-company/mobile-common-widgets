import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/input_decoration_manager.dart';
import 'package:mobile_common_widgets/mobile_common_widgets.dart';
import 'package:mobile_common_widgets/others/data/master_data_response.dart';

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
                        initialProvice: const MasterDataItem(
                          oid: "656ed41f1f755e0529b99ec5",
                          name: "Bali",
                        ),
                        initialCity: const MasterDataItem(
                          oid: "657a703134310b49eb736af4",
                          name: "Badung",
                        ),
                        onSubmitted: (value) {
                          addressController.text =
                              '${value['province_name']}, ${value['city_name'] ?? ""}';
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
