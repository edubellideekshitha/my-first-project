# CS506PC – Complete Flutter Lab Project

This is one complete Flutter application containing working demonstrations for Experiments 1–9 and unit tests for Experiment 10.

## Requirements
- Flutter SDK (Dart is included)
- Android Studio emulator or an Android device
- VS Code or Android Studio
- Internet connection for package downloads and Experiment 9

## Setup on Windows
1. Install Flutter SDK using the official Flutter installation guide.
2. Add `<flutter-sdk>\\bin` to your Windows PATH.
3. Open a new terminal and run `flutter doctor`.
4. Extract this ZIP file.
5. Open the extracted `CS506PC_Flutter_Complete_Project` folder in VS Code.
6. In the terminal, run:
   ```bash
   flutter pub get
   flutter run
   ```
7. Select an emulator or connected phone. The home page lists all practical demonstrations.

## Experiments
1. Dart language basics
2. Flutter widgets and layouts
3. Responsive UI using LayoutBuilder
4. Navigation between screens
5. Provider state management
6. Custom widgets and themes
7. Form validation
8. Fade and slide animations
9. Fetch and display REST API data
10. Unit tests and debugging

## Run Experiment 10
From the project root, run:
```bash
flutter test
```

## Useful commands
```bash
flutter doctor
flutter pub get
flutter run
flutter analyze
flutter test
```

Experiment 9 uses the public JSONPlaceholder sample API and needs internet access.
