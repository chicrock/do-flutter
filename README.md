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
