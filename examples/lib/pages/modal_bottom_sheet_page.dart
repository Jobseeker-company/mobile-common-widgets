import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/mobile_common_widgets.dart';

import '/widgets/custom_button.dart';

class ModalBottomSheetPage extends StatelessWidget {
  const ModalBottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modal Bottom Sheet"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CustomButton(
                onPressed: () {
                  JSBareBottomSheet(context, children: [
                    Text(
                      "This is a bare bottom sheet, add everything's your want to along the vertical axis",
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    DefaultBottomSheetItem(
                      leading: const Icon(
                        CupertinoIcons.link,
                        size: 20,
                        color: Color(0xFF777675),
                      ),
                      title: "Share vacancy",
                      onPresssed: () {},
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    DefaultBottomSheetItem(
                      leading: const Icon(
                        Icons.block,
                        size: 20,
                        color: Color(0xFF777675),
                      ),
                      title: "Block Vacancy",
                      onPresssed: () {},
                    ),
                    DefaultBottomSheetItem(
                      leading: const Icon(
                        CupertinoIcons.flag,
                        size: 20,
                        color: Color(0xFF777675),
                      ),
                      title: "Report Company",
                      onPresssed: () {},
                    )
                  ]).show();
                },
                text: "Bare Bottom Sheet",
              ),
              CustomButton(
                onPressed: () {
                  JSGeneralBottomSheet(
                    context,
                    product: Product.app,
                    content: const Icon(
                      Icons.warning,
                      size: 100,
                      color: Colors.red,
                    ),
                    titleText: "Ulala",
                    bodyText: "Burung merpati terbang tinggi, wah baik sekali",
                    buttonText: "Ok",
                  ).show();
                },
                text: "General Bottom Sheet",
              ),
              CustomButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    builder: (context) {
                      return JSSignInBottomSheet(
                        lang: 'en',
                        product: Product.app,
                        onSignInEmailPressed: () {},
                        onSignInGmailPressed: () {},
                        onSignInFacebookPressed: () {},
                        onSignInApplePressed: () {},
                        isShowTermsAndConditions: true,
                      );
                    },
                  );
                },
                text: "Sign in Bottom Sheet",
              ),
              CustomButton(
                onPressed: () {
                  const savedAccounts = [
                    UserInfo(
                      fullName: "Alvin Setiadi",
                      photo:
                          "https://assets-global.website-files.com/5fba23eb8789c3c7fcfb5f31/622fa2005a5fabed64659616_607d8ea5221240c8618ea3d1_Kirk-Du-Plessis-Avatar%20(1).png",
                      lastActive: "15 Desember",
                      email: "email",
                      phone: "phone",
                    ),
                    UserInfo(
                      fullName: "Rudi Setiadi",
                      photo:
                          "https://assets-global.website-files.com/5fba23eb8789c3c7fcfb5f31/622fa2005a5fabed64659616_607d8ea5221240c8618ea3d1_Kirk-Du-Plessis-Avatar%20(1).png",
                      lastActive: "15 Desember",
                      email: "email",
                      phone: "phone",
                    ),
                    UserInfo(
                      fullName: "Rudi Setiadi",
                      photo:
                          "https://assets-global.website-files.com/5fba23eb8789c3c7fcfb5f31/622fa2005a5fabed64659616_607d8ea5221240c8618ea3d1_Kirk-Du-Plessis-Avatar%20(1).png",
                      lastActive: "15 Desember",
                      email: "email",
                      phone: "phone",
                    ),
                  ];
                  const product = Product.partners;
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    builder: (context) {
                      return JSSavedAccountBottomSheet(
                        onClosePressed: () => Navigator.pop(context),
                        items: savedAccounts
                            .map(
                              (e) => SavedAccountItem(
                                product: product,
                                imageUrl: e.photo ?? "",
                                name: e.fullName ?? "",
                                lastActive: e.lastActive ?? "",
                                isLastItem: false,
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.delete_outline,
                                    size: 30,
                                  ),
                                ),
                                onTap: () {},
                              ),
                            )
                            .toList(),
                        lang: 'en',
                        product: product,
                        onSignInOtherAccountPressed: () {},
                      );
                    },
                  );
                },
                text: "Saved Account Bottom Sheet",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.white, fontSize: 22),
              ),
              CustomButton(
                onPressed: () {},
                text: "Date Picker Bottom Sheet",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserInfo {
  final String? fullName;
  final String? photo;
  final String? email;
  final String? phone;
  final String? lastActive;

  const UserInfo({
    required this.fullName,
    required this.photo,
    required this.email,
    required this.phone,
    this.lastActive,
  });

  static UserInfo defaultValue() => UserInfo(
        fullName: "",
        photo: "",
        email: "",
        phone: "",
        lastActive: DateTime.now().toIso8601String(),
      );
}
