# Mobile Common Widgets

A plugin to provide common widgets that being used by multiple jobseeker products. Every contributions is one step to make other developer life easier.

## Installation

1. Add mobile_common_widgets under [dependencies](https://dart.dev/tools/pub/dependencies) in your [pubspec.yaml](https://dart.dev/tools/pub/pubspec) :
```
dependencies:
  .
  .
  .
  mobile_common_widgets: 
    git:
      url: git@github.com:Jobseeker-company/mobile-common-widgets.git
      ref: master
```
3. Run ```flutter pub get```

## Usage

```dart
import 'package:mobile_common_widgets/mobile_common_widgets.dart';

// show info dialog
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
  text: "Info Dialog",
);

// show general bottom sheet
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
  text: "Info Dialog",
);
```

## Contribute 

How to contribute to mobile common widgets : 
1. Choose your widget to be contributed. _Make sure the widget is being used by multiple products with more than 90% similarity._
2. Add your widget to the relevant folder. For example, JSDialog should be placed inside dialogs widget.
3. Add your widget file to barrel file, named as ```mobile_common_widgets.dart```.
4. Add the usage to the example folder. Similar to [2], the widget should be placed to the relevant page that accessed from the list of buttons in home page.
5. Add a screenshot of your widget to the readme, in this [section]() and at top of the widget constructor (see bewlow example).  [How to host image to url using github?](https://www.youtube.com/watch?v=qIaWozjDyPk)

```dart
  /// ![](url to your awesome widget)
  const YourAwesomeWidget(
    BuildContext context, {
  }) : super(context);
```

# List of common widgets

## Dialog

### JSInfoDialog

<img src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/e531af67-39ca-4da9-a257-d201b5b22d71" alt="" data-canonical-src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/e531af67-39ca-4da9-a257-d201b5b22d71" width="300" height="240" />

### JSConfirmDialog

<img src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/9fd4da64-63fa-4832-a68e-b8f15c9e655a" alt="" data-canonical-src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/9fd4da64-63fa-4832-a68e-b8f15c9e655a" width="300" height="240" />

## Modal Bottom Sheet

### JSBareBottomSheet

<img src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/7d362b87-a76d-4281-80a3-9636695307f2" alt="" data-canonical-src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/7d362b87-a76d-4281-80a3-9636695307f2" width="300" height="240" />


### JSGeneralBottomSheet

<img src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/626c481e-f348-495c-b6f7-6525de70aa35" alt="" data-canonical-src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/626c481e-f348-495c-b6f7-6525de70aa35" width="300" height="240" />

### DefaultBottomSheetItem

<img src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/9a767330-e739-40e5-b6b5-34d59b3847ba" alt="" data-canonical-src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/9a767330-e739-40e5-b6b5-34d59b3847ba" width="300" height="50" />

### SignInBottomSheet

<img src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/1358e1d3-9e38-4fa9-8a69-0b6ded8a6b73" alt="" data-canonical-src="https://github.com/Jobseeker-company/mobile-b2c-app-reborn/assets/58515206/1358e1d3-9e38-4fa9-8a69-0b6ded8a6b73" width="300" height="350" />


