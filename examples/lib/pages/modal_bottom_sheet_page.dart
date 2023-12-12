import 'package:examples/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/mobile_common_widgets.dart';
import 'package:mobile_common_widgets/modal_bottom_sheet/save_account_bottom_sheet.dart';

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
                    content: const Icon(
                      Icons.warning,
                      size: 100,
                      color: Colors.red,
                    ),
                    bodyText: "Hey this is a general bottom sheet example",
                    buttonText: "Ok",
                    buttonColor: Colors.red,
                  ).show();
                },
                text: "General Bottom Sheet",
              ),
              CustomButton(
                onPressed: () {
                  SaveAccountBottomSheet(
                    context,
                    lang: 'en',
                    product: Product.app,
                    onSignInEmailPressed: () {},
                    onSignInGmailPressed: () {},
                    onSignInFacebookPressed: () {},
                    onSignInApplePressed: () {},
                  ).show();
                },
                text: "Save Account Bottom Sheet",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
