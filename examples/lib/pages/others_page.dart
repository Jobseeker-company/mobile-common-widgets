import 'package:flutter/material.dart';
import 'package:examples/widgets/custom_button.dart';
import 'package:mobile_common_widgets/core/enum.dart';
import 'package:mobile_common_widgets/others/location_page.dart';

class OthersPage extends StatelessWidget {
  const OthersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Others"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const LocationPage(product: Product.partners),
                    ),
                  );
                },
                text: "Location Page",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
