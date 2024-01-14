import 'package:flutter/material.dart';
import 'package:examples/widgets/custom_button.dart';
import 'package:mobile_common_widgets/mobile_common_widgets.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
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
                    product: Product.app,
                    content: const Icon(
                      Icons.warning,
                      size: 100,
                      color: Colors.red,
                    ),
                    bodyText: "Hey this is an info dialog example",
                    buttonText: "Close",
                  ).show();
                },
                text: "Info Dialog",
              ),
              CustomButton(
                onPressed: () {
                  JSConfirmDialog(
                    context,
                    product: Product.app,
                    content: const Icon(
                      Icons.warning,
                      size: 100,
                      color: Colors.red,
                    ),
                    bodyText: "Hey this is a confirmation dialog example",
                    outlinedButtonText: "Close",
                    buttonText: "Ok",
                  ).show();
                },
                text: "Confirmation Dialog",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
