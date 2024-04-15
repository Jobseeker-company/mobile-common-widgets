import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/buttons/js_default_color_button.dart';
import 'package:mobile_common_widgets/core/enum.dart';
import 'package:mobile_common_widgets/others/select_city_page.dart';

import '../core/input_decoration_manager.dart';
import '../core/text_style_manager.dart';
import 'data/master_data_response.dart';
import 'select_province_page.dart';

class LocationPage extends StatelessWidget {
  final String locale;
  final Product product;

  const LocationPage({
    this.locale = 'en',
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<MasterDataItem?> province = ValueNotifier(null);
    final ValueNotifier<MasterDataItem?> city = ValueNotifier(null);
    final TextEditingController provinceController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fill your location",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Province",
              style: TextStyleManager.title3(
                fontWeight: FontWeight.w600,
                height: 28 / 18,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextFormField(
              controller: provinceController,
              decoration: (product == Product.app)
                  ? InputDecorationManager.appStyle.copyWith(
                      hintText: "   Select your province",
                    )
                  : InputDecorationManager.partnerStyle.copyWith(
                      hintText: "   Select your province",
                    ),
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectProvincePage(product: product),
                  ),
                ) as MasterDataItem?;

                if (result != null) {
                  province.value = result;
                  city.value = null;
                  cityController.clear();
                  provinceController.text = result.name ?? "";
                }
              },
              readOnly: true,
              onChanged: (value) {},
              validator: (String? text) {
                return null;
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              "City",
              style: TextStyleManager.title3(
                fontWeight: FontWeight.w600,
                height: 28 / 18,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            ValueListenableBuilder(
                valueListenable: province,
                builder: (context, value, child) {
                  return TextFormField(
                    controller: cityController,
                    enabled: value != null,
                    decoration: (product == Product.app)
                        ? InputDecorationManager.appStyle.copyWith(
                            hintText: "   Select your city",
                          )
                        : InputDecorationManager.partnerStyle.copyWith(
                            hintText: "   Select your city",
                          ),
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectCityPage(
                            product: product,
                            oid: value?.oid ?? "",
                          ),
                        ),
                      ) as MasterDataItem?;

                      if (result != null) {
                        city.value = result;
                        cityController.text = result.name ?? "";
                      }
                    },
                    readOnly: true,
                    onChanged: (value) {},
                    validator: (String? text) {
                      return null;
                    },
                  );
                }),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: JSDefaultColorButton(
                onPressed: () {},
                text: "Save",
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
