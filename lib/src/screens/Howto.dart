import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/src/config.dart';
import '/src/oss_licenses.dart';
import '/src/widgets/collapsible_section.dart';

class Howto extends StatelessWidget {
  const Howto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("How to"),
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          tooltip: "Back",
          icon: Icon(Icons.adaptive.arrow_back),
          color: Theme.of(context).appBarTheme.foregroundColor,
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Usage Instructions'),
          onPressed: () {
            // Show the pop-up menu when the button is pressed
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return UsageInstructionsPopup();
              },
            );
          },
        ),
      ),
    );
  }
}

// Pop-up menu widget containing usage instructions
class UsageInstructionsPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Usage Instructions'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('1. Open the app to start your journey.'),
            Text('2. Allow GPS access for location tracking.'),
            Text('3. Enter your destination in the search bar.'),
            Text('4. Select your preferred travel mode (car, bike, walk).'),
            Text('5. Follow the directions provided on the map.'),
            Text('6. Use the options for real-time updates and rerouting.'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Close'),
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
      ],
    );
  }
}
