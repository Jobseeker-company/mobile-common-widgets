import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/modal_bottom_sheet/helpers.dart';
import '/core/enum.dart';
import 'package:mobile_common_widgets/modal_bottom_sheet/js_bottom_sheet.dart';

class SaveAccountBottomSheet extends JSBottomSheet {
  final String lang;
  final Product product;
  final Function() onSignInEmailPressed;
  final Function() onSignInGmailPressed;
  final Function() onSignInFacebookPressed;
  final Function() onSignInApplePressed;

  /// ![](https://github-production-user-asset-6210df.s3.amazonaws.com/58515206/289551644-1358e1d3-9e38-4fa9-8a69-0b6ded8a6b73.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231211%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231211T134412Z&X-Amz-Expires=300&X-Amz-Signature=bb9fd8f7ae78e2c2bc0e676cdcf15c4e091d9b0e87770f92d10ee8abef4ca553&X-Amz-SignedHeaders=host&actor_id=58515206&key_id=0&repo_id=658545639)
  const SaveAccountBottomSheet(
    BuildContext context, {
    bool barrierDismissible = true,
    String? barrierLabel,
    Color? barrierColor,
    this.lang = 'en',
    required this.product,
    required this.onSignInEmailPressed,
    required this.onSignInGmailPressed,
    required this.onSignInFacebookPressed,
    required this.onSignInApplePressed,
  }) : super(context);

  @override
  Widget buildBottomSheet() {
    return _BottomSheetWidget(
      lang: lang,
      product: product,
      onSignInEmailPressed: onSignInEmailPressed,
      onSignInGmailPressed: onSignInGmailPressed,
      onSignInFacebookPressed: onSignInFacebookPressed,
      onSignInApplePressed: onSignInApplePressed,
    );
  }
}

class _BottomSheetWidget extends StatelessWidget {
  final String lang;
  final Product product;
  final Function() onSignInEmailPressed;
  final Function() onSignInGmailPressed;
  final Function() onSignInFacebookPressed;
  final Function() onSignInApplePressed;
  const _BottomSheetWidget({
    required this.lang,
    required this.product,
    required this.onSignInEmailPressed,
    required this.onSignInGmailPressed,
    required this.onSignInFacebookPressed,
    required this.onSignInApplePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 35,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close),
                ),
              ),
              Image.asset(
                (product == Product.app)
                    ? "assets/jobseeker_app_sign_in.png"
                    : "assets/jobseeker_partners_sign_in.png",
                width: 240,
                height: 75,
              ),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  (product == Product.app)
                      ? ModalBottomSheetHelpers.getAppSignInEmailText(lang)
                      : ModalBottomSheetHelpers.getPartnersSignInEmailText(
                          lang),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        height: 20 / 16,
                      ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(13),
                    side: const BorderSide(
                      width: 1.0,
                      color: Color(0xFF777675),
                    ),
                  ),
                  onPressed: onSignInEmailPressed,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            (lang == 'en')
                                ? "Log in/Sign up with Email"
                                : "Masuk/Daftar dengan email",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                      endIndent: 1,
                      indent: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      (lang == "en")
                          ? "or continue with"
                          : "atau lanjutkan dengan",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                      endIndent: 1,
                      indent: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: onSignInGmailPressed,
                      child: Image.asset(
                        "assets/sign_in_google_icon.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: const Color(0xFF3976EA),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: onSignInFacebookPressed,
                      child: Image.asset(
                        "assets/sign_in_facebook_icon.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  if (Platform.isIOS)
                    SizedBox(
                      width: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: onSignInApplePressed,
                        child: Image.asset(
                          "assets/sign_in_apple_icon.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
