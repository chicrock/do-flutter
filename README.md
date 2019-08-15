# Do Flutter

Try flutter !!

## Develop with VSCode

### Run simulator

```bash
# Type in cli
open -a Simulator

# OR Run in VSCode module
Command + Shift + P > Flutter: Launch Emulator > [Do Stuff for run Simulator]
```

### Run Debugging in Simulator

```
Debug > Start Debugging > [Do Stuff for run]
```

## Install packages

```yaml
# In pubspec.yaml
dependencies:
  flutter:
    sdk: flutter
cupertino_icons: ^0.1.2
+   english_words: ^3.1.0
```

```bash
# Type in cli. This command do install modules via the pubspec.yaml
flutter pub get
```

## Using Assets

```yaml
# In pubspec.yaml
# Add Assets Folders in the root of the project
# Remove Comment in assets section.

flutter:
  ...
  assets:
    - assets/images/loading.gif
  ...
```

```bash
# After add the assets in yaml, do pacakges get.
flutter pub get
```

## VSCode Quick Fix

```
Command + .
```

## Provider

Use Provider for stores

```dart
// Using when read widget context
JoinOrLogin joinOrLogin = Provider.of<JoinOrLogin>(context);
bool isJoin = joinOrLogin.isJoin;

// OR

// Using when cannot read widget context
// Consumer returns the widget context and provider and child widget
Consumer<JoinOrLogin> (
  builder: (BuildContext context, JoinOrLogin value, Widget child) => GestureDetector(
    onTab: () {
      bool isJoin = value.isJoin;
    }
  )
)
```

## Firebase Auth

Using Firebase Auth pub
[Firebase Auth Pub](https://pub.dev/packages/firebase_auth)

- At least Xcode 10.1
