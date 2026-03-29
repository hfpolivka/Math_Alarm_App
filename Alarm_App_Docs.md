# Alarm App Documentation <!-- omit in toc -->

<br>

## Table of Contents <!-- omit in toc -->

- [Resources](#resources)
- [Prerequisites](#prerequisites)
- [Installing Flutter](#installing-flutter)
- [Set Up an Android Emulator](#set-up-an-android-emulator)
- [Set Up the Flutter Project](#set-up-the-flutter-project)
- [Widgets](#widgets)
- [Configure Widgets and Scaffolding](#configure-widgets-and-scaffolding)
- [Container Widgets](#container-widgets)
- [Column Widgets](#column-widgets)

<br>

## Resources

+ [Flutter Crash Course Playlist](https://www.youtube.com/watch?v=j_rCDc_X-k8&list=PL4cUxeGkcC9giLVXCHSQmWqlHc9BLXdVx&index=1)
+ [Flutter Layout Cheat Sheet](https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e)
+ [TMC Flutter Beginner Widgets Cheatsheet](https://www.scribd.com/document/678484299/tmc-flutter-beginner-widgets-cheatsheet?v=0.521)
+ [RESPONSIVE DESIGN | Flutter Tutorial](https://www.youtube.com/watch?v=MrPJBAOzKTQ)
+ [Responsive Dashboard UI | FLUTTER Tutorial](https://www.youtube.com/watch?v=9bo1V9STW2c&t=887s)
+ [Modular App Architecture in Flutter for Custom Software Projects (2025 Edition)](https://www.200oksolutions.com/blog/modular-app-architecture-in-flutter-for-custom-software-projects-2025-edition/)

<br>

## Prerequisites

+ Install Flutter (below)
+ Install [Visual Studio Code](https://code.visualstudio.com/download)
+ Install [Visual Studio](https://visualstudio.microsoft.com/downloads/)
  + Install Flutter extension
  + Install Dart extension (may be included with Flutter ext.)
+ Download and install [Git for Windows](https://git-scm.com/downloads/win)
+ Install [Android Studio Otter for Flutter](https://docs.flutter.dev/platform-integration/android/setup)
+ Main [Android Studio Otter](https://developer.android.com/studio) installation page

<br>

## Installing Flutter

1) Install [Flutter](https://docs.flutter.dev/get-started/custom) from the website.

<br>

2) Download the Flutter SDK:
    + In VSCode, click View (upper-left), then Command Palette.
    + In the text prompt, type "flutter" and select **Flutter: New Project**.
    + A prompt will appear to locate the Flutter SDK on the local computer. Select **Download SDK**.
    + When the "Select Folder for Flutter SDK" dialog displays, choose a location to install Flutter:
      ```bash
      # Current location
      /Users/Hayde/dev/{flutter_sdk_will_be_installed_here}

      # Click "Clone Flutter" to install in that location
      ```
      + During installation, a message in VSCode should read "Downloading the Flutter SDK. This may take a few minutes."
        + **NOTE: If it seems the download has hung, click Cancel, then start the installation again.**

<br>

3) Once the installation completes successfully, click **Add SDK to PATH** in the VSCode prompt that appears:
    + Towards the top of the VSCode window, select the **Application** template from the options.
    + Select a file location for the project to be built.
       + **NOTE: This will restart VSCode and open the file with the Flutter project in the Explorer.**
    + It may also be necessary to close and reopen all terminal windows.

<br>

4) To verify that Flutter installed correctly, run the following command in a VSCode terminal:
    ```
    flutter doctor -v
    ```
    + **NOTE: If the command isn't found or there's an error, check out [Flutter installation troubleshooting](https://docs.flutter.dev/install/troubleshoot).**
    + Read through the output and install anything missing (in red) that is deemed necessary for the project.

<br>

## Set Up an Android Emulator

1) Open Android Studio, click the More Actions dropdown on the main page, and select **Virtual Device Manager**.

<br>

2) In the Device Manager window, click the plus sign in the upper-left to add a new device:
   + In the Add Device window, select Phone for the Form Factor, then select an Android device to emulate. Click Next.
     + **NOTE: For smaller devices, the emulator window may be too large. Use older Android devices in this case, or configure to display horizontally.**
   + On the next page, give the machine a name.
   + Click Additional Settings, and configure the device based on preference/restrictions.
   + Click Finish.
   + Click Yes to confirm download.

<br>

3) Once the download completes, the new machine should be ready for use.

<br>

4) Click the play button to the right of the machine's name to start it, and the three dots to manage/reconfigure the machine if necessary.

<br>

## Set Up the Flutter Project

1) Open a terminal and navigate to the file/folder the project will exist in.
   + **NOTE: Do NOT have spaces or special characters in the filenames.**

<br>

2) Run the following command in the terminal to create the project and give it a name:
   ```bash
   flutter create {project_name}

   # No spaces or special characters!
   ```

<br>

3) Once the project is created, open it in VSCode:
   + Navigate into the project directory.
   + Run the following command to open the current folder in VSCode:
      ```
      code .
      ```

<br>

4) Install the Flutter and Dart extensions to VSCode if not done already.

<br>

5) Enable the Status Bar if not done already (View > Appearance > Status Bar checked).

<br>

6) Connect the Android emulator to VSCode:
   + In the bottom-right of the VSCode window, click the device name (e.g. No Device, Windows, etc.).
   + In the prompt at the top, a list of options should be presented. Click the name of the Android emulator created in the previous section.
   + The emulator window should appear.

<br>

7) Run the Flutter project in the emulator:
   + Navigate to the **main.dart** file (lib > main.dart).
   + On the **main.dart** tab, click the Start Debugging dropdown (icon is a play button with a bug), and select "Run Without Debugging".
     + **NOTE: This must be done through the **main.dart** file, or the Start Debugging option will not be available.**
   + Once the project runs without debugging, the project should appear in the Android emulator with the Flutter icon.
   + The header should read "Flutter Demo Home Page" when it's done setting up, and the functionality is that of a simple button click counter.
   + Use the colored buttons that appear towards the top of the **main.dart** file to manage the application (e.g. stop, restart, etc.).

<br>

8) OR run the Flutter project in the Chrome browser:
   + In the VSCode terminal, run the following:
      ```
      flutter run -d chrome
      ```

<br>

9)  Get familiar with the project file layout:
   + Most files will not be needed. The core files for the application will live in the **/lib** file.
   + Files with a "." in front of them contin configuration files.
   + A majority of the other files are built and used by Flutter under the hood, and rarely have any manual uses. The structure is simply how the software organizes itself.

<br>

## Widgets

1) Each element on the screen of a Flutter app/project is a widget.
   + The layout is completely dependent on the choice and sequence of widgets used.
   + Ultimately, the structure of the code is a tree of widgets.
   + Widgets (pre-built, customized, etc.), are created and set up with the use of classes.

<br>

2) Overall, there are two types of widgets:
   + Stateless widget:
     + A type of widget that cannot be updated or edited once built (immutable).
     + Some examples include Display Text, Icons, Images, etc.
   + Stateful widget:
     + A type of widget that can be modified after being built.
     + Some examples include Buttons, Sliders, Text Fields, etc.

<br>

3) The heirarchical tree of the widgets might look something like the following:
   + Root widget (e.g. the app itself)
     + Container widget
     + Column widget
       + Text widget
       + Image widget
       + Row widget
         + Text widget
         + Button widget
       + Footer widget

<br>

## Configure Widgets and Scaffolding

1) Make a copy of the **main.dart** file located under **/lib**, and delete all of the contents in the copy.

<br>

2) Input and save the following in the (now empty) copy of the **main.dart** file:
   ```dart
   import 'package:flutter/material.dart';

   void main() {
      runApp(MaterialApp(
         home: Scaffold(
            appBar: AppBar(
               title: const Text('This is the App'),
               backgroundColor: Colors.brown[700],
               centerTitle: true,
            ), // AppBar
            body: const Text('I'm the App, bitch'),
         )  // Scaffold
      ));   // MaterialApp
   }
   ```
   + **NOTE: To make more detailed edits to this file, look up the syntax (using the above as reference).**

<br>

3) Test the new **main.dart** code from the copy file:
   + Change the name of the actual **main.dart** file to something like **"original_main.dart"**.
   + Change the name of the copy to **main.dart**.
   + Save the file, then click the restart button for the emulator (green arrow loop).
   + **NOTE: The app must be manually restarted this way if any changes are made in the code.**

<br>

4) Create a Stateless widget:
   + On the next line, type "stl". A list of options should appear, select "Flutter Stateless Widget".
   + The following should appear in the text editor:
      ```dart
      class MyWidget extends StatelessWidget {
         const MyWidget({super.key});

         @override
         Widget build(BuildContext context) {
            return const Placeholder();
         }
      }
      ```
   + Include the text from the body in this new widget. This way, changes made to this specific text will appear automatically upon saving the file instead of requiring a restart.

<br>

5) The code in **main.dart** should now look something like this:
   ```dart
   import 'package:flutter/material.dart';

   void main() {
      runApp(MaterialApp(
         home: Scaffold(
            appBar: AppBar(
               title: const Text('This is the App'),
               backgroundColor: Colors.brown[700],
               centerTitle: true,
            ), // AppBar
            body: const Home(),
         )  // Scaffold
      ));   // MaterialApp
   }

   class Home extends StatelessWidget {
      const Home({super.key});

      @override
      Widget build(BuildContext context) {
         return const Text("I'm the App, bitch");
      }
   }
   ```
   + The following should appear in the Android emulator, and any changes made to the stateless widget text should now appear upon refresh:
   ![New stateless widget text](./flutter_gui_app/images/stateless_widget_example.png)

<br>