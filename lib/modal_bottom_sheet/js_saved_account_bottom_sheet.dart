import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/buttons/js_rounded_pink_button.dart';
import 'package:mobile_common_widgets/core/text_style_manager.dart';
import '/core/enum.dart';
import 'helpers.dart';
import 'saved_account_item.dart';

class JSSavedAccountBottomSheet extends StatelessWidget {
  final String lang;
  final Product product;
  final List<SavedAccountItem> items;
  final Function() onSignInOtherAccountPressed;
  final Function() onClosePressed;
  const JSSavedAccountBottomSheet({
    super.key,
    required this.lang,
    required this.product,
    required this.items,
    required this.onClosePressed,
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
              onTap: onClosePressed,
              child: const Icon(Icons.close),
            ),
          ),
          Image.asset(
            (product == Product.app)
                ? "assets/jobseeker_app_sign_in.png"
                : "assets/jobseeker_partners_sign_in.png",
            width: 240,
            height: 75,
            package: "mobile_common_widgets",
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              (product == Product.app)
                  ? ModalBottomSheetHelpers.getAppSignInEmailText(lang)
                  : ModalBottomSheetHelpers.getPartnersSignInEmailText(lang),
              textAlign: TextAlign.center,
              style: TextStyleManager.hierarchy2(fontSize: 14),
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
            child: JSRoundedButton(
              onPressed: onSignInOtherAccountPressed,
              text: ModalBottomSheetHelpers.getSignInWithOtherAccText(lang),
              product: product,
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
