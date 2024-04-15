import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/core/color_manager.dart';
import 'package:mobile_common_widgets/others/data/master_data_response.dart';

import '../buttons/js_default_color_button.dart';
import '../core/enum.dart';
import '../core/input_decoration_manager.dart';
import '../core/text_style_manager.dart';

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
              "Choose your province",
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
                keyword.value = value;
              },
              decoration: (widget.product == Product.app)
                  ? InputDecorationManager.appStyle.copyWith(
                      hintText: "Province",
                      prefixIcon: Icon(
                        Icons.search,
                        color: ColorManager.disableAndConstrast,
                      ),
                    )
                  : InputDecorationManager.partnerStyle.copyWith(
                      hintText: "Province",
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
                          return _ErrorWidget(
                            errorMessage: snapshot.error.toString(),
                            onPressed: refresh,
                          );
                        }
                        return Center(
                          child: CircularProgressIndicator(
                            color: ColorManager.primaryPink700,
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

class _ErrorWidget extends StatelessWidget {
  final Function() onPressed;
  final String errorMessage;
  const _ErrorWidget({
    Key? key,
    required this.errorMessage,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.warning_rounded,
          size: 125,
          color: ColorManager.primaryPink700,
        ),
        const SizedBox(height: 20),
        Text(
          "The server is crashing!",
          style: TextStyleManager.bodyLarge(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 300,
          child: JSDefaultColorButton(
            onPressed: onPressed,
            text: "Refresh",
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          errorMessage,
          maxLines: 2,
          style: TextStyleManager.caption2(
            color: ColorManager.disableAndConstrast,
          ),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
