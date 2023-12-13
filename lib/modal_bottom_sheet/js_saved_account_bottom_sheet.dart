import 'package:flutter/material.dart';
import '/core/enum.dart';
import 'helpers.dart';
import 'js_bottom_sheet.dart';
import 'saved_account_item.dart';

class JSSavedAccountBottomSheet extends JSBottomSheet {
  final String lang;
  final Product product;
  final List<SavedAccountItem> items;
  final Function() onSignInOtherAccountPressed;
  const JSSavedAccountBottomSheet(
    BuildContext context, {
    bool barrierDismissible = true,
    String? barrierLabel,
    Color? barrierColor,
    this.lang = 'en',
    required this.product,
    required this.items,
    required this.onSignInOtherAccountPressed,
  }) : super(context);
  @override
  Widget buildBottomSheet() {
    return _BottomSheetWidget(
      lang: lang,
      product: product,
      items: items,
      onSignInOtherAccountPressed: onSignInOtherAccountPressed,
    );
  }
}

class _BottomSheetWidget extends StatelessWidget {
  final String lang;
  final Product product;
  final List<SavedAccountItem> items;
  final Function() onSignInOtherAccountPressed;
  const _BottomSheetWidget({
    required this.lang,
    required this.product,
    required this.items,
    required this.onSignInOtherAccountPressed,
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
          const SizedBox(
            height: 16.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              (product == Product.app)
                  ? ModalBottomSheetHelpers.getAppSignInEmailText(lang)
                  : ModalBottomSheetHelpers.getPartnersSignInEmailText(lang),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    height: 20 / 16,
                  ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          ...items.take(2),
          const SizedBox(
            height: 16.0,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onSignInOtherAccountPressed,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Text(
                  ModalBottomSheetHelpers.getSignInWithOtherAccText(lang),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
