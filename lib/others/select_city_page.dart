import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/color_manager.dart';
import 'package:mobile_common_widgets/core/debouncer.dart';
import 'package:mobile_common_widgets/others/data/master_data_response.dart';

import '../core/enum.dart';
import '../core/input_decoration_manager.dart';
import '../core/text_style_manager.dart';
import 'dart:async';

import 'error_widget.dart';

class SelectCityPage extends StatefulWidget {
  final String locale;
  final Product product;
  final String province;

  const SelectCityPage({
    this.locale = 'en',
    required this.product,
    required this.province,
    super.key,
  });

  @override
  State<SelectCityPage> createState() => _SelectCityPageState();
}

class _SelectCityPageState extends State<SelectCityPage> {
  final Dio dio = Dio(BaseOptions(
    connectTimeout: const Duration(milliseconds: (40 * 1000)),
    receiveTimeout: const Duration(milliseconds: (40 * 1000)),
  ));
  final ValueNotifier<String> keyword = ValueNotifier('');
  int refreshCounter = 0;
  final debouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
  }

  void refresh() {
    setState(() {
      refreshCounter++;
    });
  }

  // Function to get nearby nodes by coordinates and radius given. Will throw DioExeption when error.
  Future<MasterDataResponse> getCity(String keyword) async {
    const path = 'https://master.api-jobseeker.site/area/city';

    final response = await dio.get(
      path,
      queryParameters: {'q': keyword, 'province': widget.province},
    );
    if (response.statusCode == 200) {
      return MasterDataResponse.fromJson(response.data);
    } else {
      throw DioException(
        requestOptions: RequestOptions(
          path: path,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              (widget.locale == "en") ? "Choose your City" : "Pilih kota",
              style: TextStyleManager.title3(
                fontWeight: FontWeight.w600,
                height: 28 / 18,
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            TextField(
              onChanged: (value) {
                debouncer.run(() {
                  keyword.value = value;
                });
              },
              decoration: (widget.product == Product.app)
                  ? InputDecorationManager.appStyle.copyWith(
                      hintText: (widget.locale == "en") ? "City" : "Kota",
                      prefixIcon: Icon(
                        Icons.search,
                        color: ColorManager.disableAndConstrast,
                      ),
                    )
                  : InputDecorationManager.partnerStyle.copyWith(
                      hintText: (widget.locale == "en") ? "City" : "Kota",
                      prefixIcon: Icon(
                        Icons.search,
                        color: ColorManager.disableAndConstrast,
                      ),
                    ),
            ),
            Expanded(
              child: ValueListenableBuilder(
                  key: ValueKey(refreshCounter),
                  valueListenable: keyword,
                  builder: (context, value, child) {
                    return FutureBuilder<MasterDataResponse>(
                      future: getCity(value),
                      builder: (context,
                          AsyncSnapshot<MasterDataResponse> snapshot) {
                        if (snapshot.hasData) {
                          final items = snapshot.data?.data?.content ?? [];
                          return ListView.separated(
                            separatorBuilder: (context, index) {
                              return const Divider(
                                height: 2,
                                color: Colors.black,
                              );
                            },
                            shrinkWrap: true,
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              final item = items[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.pop(context, item);
                                },
                                child: ListTile(
                                  title: Text(items[index].name ?? ''),
                                ),
                              );
                            },
                          );
                        }
                        if (snapshot.hasError) {
                          return CustomErrorWidget(
                            errorMessage: snapshot.error.toString(),
                            onPressed: refresh,
                            locale: widget.locale,
                          );
                        }
                        return Center(
                          child: CircularProgressIndicator(
                            color: (widget.product == Product.app)
                                ? ColorManager.primaryPink700
                                : ColorManager.primaryBlue700,
                          ),
                        );
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
