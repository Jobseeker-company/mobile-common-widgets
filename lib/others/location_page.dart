import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/color_manager.dart';
import 'package:mobile_common_widgets/core/enum.dart';
import 'package:mobile_common_widgets/others/select_city_page.dart';

import '../core/input_decoration_manager.dart';
import '../core/text_style_manager.dart';
import 'data/master_data_response.dart';
import 'select_province_page.dart';

class LocationPage extends StatefulWidget {
  final String locale;
  final Product product;
  final ValueChanged<Map<String?, dynamic>> provinceResult;
  final ValueChanged<Map<String?, dynamic>> cityResult;

  const LocationPage({
    this.locale = 'en',
    required this.product,
    required this.provinceResult,
    required this.cityResult,
    super.key,
  });

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final ValueNotifier<MasterDataItem?> province = ValueNotifier(null);
  final ValueNotifier<MasterDataItem?> city = ValueNotifier(null);
  final TextEditingController provinceController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final Map<String?, dynamic> _provinceResult = {};
  final Map<String?, dynamic> _cityResult = {};

  @override
  void dispose() {
    provinceController.dispose();
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              (widget.locale == "en") ? "Province" : "Provinsi",
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
              decoration: (widget.product == Product.app)
                  ? InputDecorationManager.appStyle.copyWith(
                      hintText: (widget.locale == "en")
                          ? "   Select your province"
                          : "Pilih provinsi",
                    )
                  : InputDecorationManager.partnerStyle.copyWith(
                      hintText: (widget.locale == "en")
                          ? "   Select your province"
                          : "Pilih provinsi",
                    ),
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectProvincePage(
                      product: widget.product,
                      locale: widget.locale,
                    ),
                  ),
                ) as MasterDataItem?;

                if (result != null) {
                  province.value = result;
                  city.value = null;
                  cityController.clear();
                  _cityResult.clear();
                  provinceController.text = result.name ?? "";
                  _provinceResult.addAll(result.toJson());
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
              (widget.locale == "en") ? "City" : "Kota",
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
                    decoration: (widget.product == Product.app)
                        ? InputDecorationManager.appStyle.copyWith(
                            hintText: (widget.locale == "en")
                                ? "   Select your city"
                                : "Pilih kota",
                          )
                        : InputDecorationManager.partnerStyle.copyWith(
                            hintText: (widget.locale == "en")
                                ? "   Select your city"
                                : "Pilih kota",
                          ),
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectCityPage(
                            product: widget.product,
                            province: value?.name ?? "",
                            locale: widget.locale,
                          ),
                        ),
                      ) as MasterDataItem?;

                      if (result != null) {
                        city.value = result;
                        cityController.text = result.name ?? "";
                        _cityResult.addAll(result.toJson());
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
            ValueListenableBuilder(
                valueListenable: city,
                builder: (context, value, child) {
                  return SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: value != null
                            ? null
                            : ColorManager.disableAndConstrast,
                      ),
                      onPressed: () {
                        widget.provinceResult(_provinceResult);
                        widget.cityResult(_cityResult);
                        Navigator.pop(context);
                      },
                      child: Text(
                        (widget.locale == "en") ? "Save" : "Simpan",
                        style: TextStyleManager.bodyLarge(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
