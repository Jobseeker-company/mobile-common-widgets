import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/color_manager.dart';
import 'package:mobile_common_widgets/others/data/master_data_response.dart';

import '../buttons/js_default_color_button.dart';
import '../core/debouncer.dart';
import '../core/enum.dart';
import '../core/input_decoration_manager.dart';
import '../core/text_style_manager.dart';
import 'error_widget.dart';

class SelectProvincePage extends StatefulWidget {
  final String locale;
  final Product product;

  const SelectProvincePage({
    this.locale = 'en',
    required this.product,
    super.key,
  });

  @override
  State<SelectProvincePage> createState() => _SelectProvincePageState();
}

class _SelectProvincePageState extends State<SelectProvincePage> {
  final Dio dio = Dio(BaseOptions(
    connectTimeout: const Duration(milliseconds: (40 * 1000)),
    receiveTimeout: const Duration(milliseconds: (40 * 1000)),
  ));
  final ValueNotifier<String> keyword = ValueNotifier('');
  final debouncer = Debouncer(milliseconds: 500);
  int refreshCounter = 0;

  @override
  void initState() {
    super.initState();
  }

  void refresh() {
    setState(() {
      refreshCounter++; // Increment to trigger a FutureBuilder rebuild
    });
  }

  // Function to get nearby nodes by coordinates and radius given. Will throw DioExeption when error.
  Future<MasterDataResponse> getProvince(String keyword) async {
    const path = 'https://master.api-jobseeker.site/area/province';
    final response = await dio.get(
      path,
      queryParameters: {
        'country': 'Indonesia',
        'q': keyword,
      },
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
              (widget.locale == "en")
                  ? "Choose your province"
                  : "Pilih provinsi",
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
                      hintText:
                          (widget.locale == "en") ? "Province" : "Provinsi",
                      prefixIcon: Icon(
                        Icons.search,
                        color: ColorManager.disableAndConstrast,
                      ),
                    )
                  : InputDecorationManager.partnerStyle.copyWith(
                      hintText:
                          (widget.locale == "en") ? "Province" : "Provinsi",
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
                      future: getProvince(value),
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
