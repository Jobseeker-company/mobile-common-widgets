import 'package:flutter/material.dart';
import 'package:mobile_common_widgets/mobile_common_widgets.dart';

import '../widgets/custom_button.dart';

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
                  JSInfoDialog(
                    context,
                    content: const Icon(
                      Icons.warning,
                      size: 100,
                      color: Colors.red,
                    ),
                    bodyText: "Hey this is an info dialog example",
                    buttonText: "Close",
                    buttonColor: Colors.red,
                  ).show();
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
                  JSConfirmDialog(
                    context,
                    content: const Icon(
                      Icons.warning,
                      size: 100,
                      color: Colors.red,
                    ),
                    bodyText: "Hey this is a confirmation dialog example",
                    outlinedButtonText: "Close",
                    buttonText: "Ok",
                    buttonColor: Colors.red,
                    outlinedButtonTextColor: Colors.red,
                    outlinedButtonColor: Colors.brown,
                  ).show();
                },
                text: "General Bottom Sheet 2",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
